FROM ruby:3.1.0-slim
WORKDIR /project
COPY . .
RUN bundle install
CMD ["ruby", "main.rb"]