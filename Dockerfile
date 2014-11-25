FROM ruby:2.1.5

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/
ADD Gemfile.lock /app/
RUN bundle install

ADD . /app

EXPOSE 80
CMD ["ruby", "main.rb"]