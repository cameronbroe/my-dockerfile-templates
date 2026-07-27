FROM ruby:4.0.6-slim
WORKDIR /project
COPY . .
RUN bundle install
CMD ["ruby", "main.rb"]