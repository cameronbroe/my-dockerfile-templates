FROM ruby:4.0.0-slim
WORKDIR /project
COPY . .
RUN bundle install
CMD ["ruby", "main.rb"]