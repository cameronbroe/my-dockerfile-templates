FROM ruby:4.0.1-slim
WORKDIR /project
COPY . .
RUN bundle install
CMD ["ruby", "main.rb"]