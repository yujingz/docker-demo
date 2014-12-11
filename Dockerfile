# Base off the latest ubuntu release
FROM rails:onbuild

# Add gemfiles early to cache installed gems
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

# Install app rubygem dependencies
RUN bundle install

# Change and link to the app directory
RUN mkdir /app
WORKDIR /app
ADD . /app