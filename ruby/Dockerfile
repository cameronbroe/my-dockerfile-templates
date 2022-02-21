FROM ruby:3.1.1-slim
WORKDIR /project
COPY . .
RUN bundle install
CMD ["ruby", "main.rb"]