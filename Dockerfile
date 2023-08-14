FROM ruby:3.2.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs default-mysql-client vim
WORKDIR /profile_app
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install --jobs=2
COPY . /profile_app
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3010
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]