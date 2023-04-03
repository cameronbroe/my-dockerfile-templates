FROM ruby:3.2.2-slim
WORKDIR /project
COPY . .
RUN bundle install
CMD ["ruby", "main.rb"]