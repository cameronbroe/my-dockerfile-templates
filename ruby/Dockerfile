FROM ruby:3.2.1-slim
WORKDIR /project
COPY . .
RUN bundle install
CMD ["ruby", "main.rb"]