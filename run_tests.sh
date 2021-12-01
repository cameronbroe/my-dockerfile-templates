#!/bin/bash

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

	echo "⚡  checking run for ${environment}"
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
	test_build $environment $file
	test_run $environment $last_build_hash
done