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
RUN mkdir /myapp
# myapp can be replaced with the name of the app
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN echo "gem 'bcrypt', '~> 3.1.7'" >> Gemfile
RUN bundle install
COPY . /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
RUN ./.vim_rails.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
