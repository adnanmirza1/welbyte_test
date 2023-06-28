# Install

#### Clone the repository

```shell
git clone https://github.com/adnanmirza1/welbyte_test.git
cd welbyte_test
```

#### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 3.1.2` If not, install the right ruby version.

#### Check your Rails version

```shell
rails -v
```

The ouput should start with something like `Rails 7` If not, install the right rails version

# System dependencies
All the system dependencies are included in gemfile. Just run this command to build the dependencies:

``` bundle install ```
and then run these commands
```shell
yarn
yarn build
yarn build:css
```
or alternatively you can also run this command to precompile the assets
```shell
bundle exec rails assets:precompile
```

# Database initialization

```shell
rails db:create db:migrate
```

# How to run

```shell
rails s
```
And now you can visit the site with the URL http://localhost:3000

# Deployed Link

Here is the deployed link of this project on heroku: https://welbyte-test-ac2eda2aac02.herokuapp.com/
