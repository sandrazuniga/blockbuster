#/usr on error
set -o errexit

bundle install
bundle exect rake assets:precompile
bundle exect rake assets:clean
bundle exect rake db:migrate
bundle exect rake db:seed