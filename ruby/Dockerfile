FROM ruby:3.4.5-slim
WORKDIR /project
COPY . .
RUN bundle install
CMD ["ruby", "main.rb"]