FROM ruby:3.1.2-slim
WORKDIR /project
COPY . .
RUN bundle install
CMD ["ruby", "main.rb"]