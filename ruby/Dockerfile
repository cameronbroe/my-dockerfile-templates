FROM ruby:3.4.6-slim
WORKDIR /project
COPY . .
RUN bundle install
CMD ["ruby", "main.rb"]