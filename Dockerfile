FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /ssfs-spotcode

COPY . /ssfs-spotcode

RUN gem install bundler && gem install rails

COPY Gemfile /ssfs-spotcode/Gemfile

COPY Gemfile.lock /ssfs-spotcode/Gemfile.lock

EXPOSE 3000

CMD ./start-dev.sh
