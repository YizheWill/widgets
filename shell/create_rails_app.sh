mkdir rails-chat-tutorial
cd rails-chat-tutorial
rbenv local 2.6.2
echo "source 'https://rubygems.org'" > Gemfile
echo "gem 'rails', '5.2.3'" > Gemfile
bundle install
bundle exec rails new . --force -skip-bundle
sed -i.bak "s/^gem \'rails\'.*$/gem \'rails\', \'5.2.3\'/" Gemfile
bundle update
bundle exec rails s
