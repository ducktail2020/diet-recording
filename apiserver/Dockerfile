FROM ruby:2.6.0
ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*




ENV APP_HOME /myapp
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile $APP_HOME
COPY Gemfile.lock $APP_HOME
RUN gem install bundler && bundle install

# ADD . $APP_HOME