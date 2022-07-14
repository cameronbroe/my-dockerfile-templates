#!/bin/bash

should_ignore=
check_arch_ignore () {
	should_ignore=0
	local environment=$1
	local arch_ignore="${environment}/.archignore"
	local current_arch=$(lscpu | grep Architecture | tr -d '[:blank:]' | awk -F: '{ print $2 }')
	
	echo "💭  checking if ${environment} should be ignored on ${current_arch}"
	if [[ -f "${arch_ignore}" ]]; then
		transformed_file=$(cat ${arch_ignore} | tr '[:blank:]' ' ')
		arch_count=$(echo $transformed_file | grep -ic ${current_arch})
		if [[ $arch_count -gt 0 ]]; then
			echo "🛑  ${current_arch} is ignored for ${environment}"
			should_ignore=1
		else
			echo "🟢  ${current_arch} is not ignored for ${environment}"
			should_ignore=0
		fi
	fi
}

last_build_hash=
test_build () {
	local environment=$1
	local dockerfile=$2

	echo "🏗️  checking build for ${environment}"
	last_build_hash=$(docker build -q -f $dockerfile -t my-${environment}-docker-template $environment/)
	build_result=$?

	if [[ $build_result -eq 0 ]]; then
		echo "✅  build successful for ${environment}"
	else
		echo "❌  build failed for ${environment}"
		exit 1
	fi
}

test_run () {
	local environment=$1
	local image_hash=$2

	echo "🚀  checking run for ${environment}"
	output=$(docker run --rm $image_hash)
	run_result=$?

	if [[ $run_result -eq 0 ]]; then
		echo "✅  run successful for ${environment}"
		if [[ $output =~ .*"Hello, world!".* ]]; then
			echo "✅  output is correct for ${environment}"
		else
			echo "❌  output is incorrect for ${environment}"
			exit 3
		fi
	else
		echo "❌  run failed for ${environment}"
		exit 2
	fi

}

dockerfiles=$(find . -type f -name Dockerfile)
for file in $dockerfiles; do
	environment=$(dirname $file | tr -d ./)
	check_arch_ignore $environment
	if [[ $should_ignore -ne 1 ]]; then
		test_build $environment $file
		test_run $environment $last_build_hash
	fi
done