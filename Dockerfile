FROM ruby:2.5
EXPOSE 3000

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /ssfs-spotcode

COPY . /ssfs-spotcode

RUN gem install bundler && gem install rails

COPY Gemfile /ssfs-spotcode/Gemfile
COPY Gemfile.lock /ssfs-spotcode/Gemfile.lock

ENV BUNDLE_PATH /bun

CMD ./start-dev.sh
