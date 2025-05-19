FROM ruby:3.4.4-slim
WORKDIR /project
COPY . .
RUN bundle install
CMD ["ruby", "main.rb"]