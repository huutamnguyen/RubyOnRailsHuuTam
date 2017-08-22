FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /engineProject
WORKDIR /engineProject

ADD Gemfile /engineProject/Gemfile
ADD Gemfile.lock /engineProject/Gemfile.lock

RUN bundle install

ADD . /engineProject

