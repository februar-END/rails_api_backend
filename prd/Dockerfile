FROM ruby:3.2.1
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs

RUN mkdir /profile_app
WORKDIR /profile_app
COPY Gemfile /profile_app/Gemfile
COPY Gemfile.lock /profile_app/Gemfile.lock
RUN gem install bundler
RUN bundle install --without test development
ADD . /profile_app
EXPOSE 3000

CMD ["/bin/sh", "-c", "bundle exec rails db:create && bundle exec rails db:migrate && bundle exec puma -p 3000 -c /profile_app/config/puma.rb -E production"]