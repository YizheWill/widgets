FROM ruby:2.5

RUN apt-get update -qq \
&& apt-get install -y \
  curl \
  git-core \
  gnupg \
  locales \
  zsh \
  wget \
  npm \
  fonts-powerline \
  nodejs \
  postgresql-client \
  vim
ENV RAILS_ROOT /var/www/app_name
RUN mkdir -p $RAILS_ROOT
WORKDIR $RAILS_ROOT
ENV RAILS_ENV='production'
ENV RACK_ENV='production'

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install --jobs 20 --retry 5 --without development test
COPY . .

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
