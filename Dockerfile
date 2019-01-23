FROM ruby:alpine
RUN mkdir /app
WORKDIR /app
COPY run.rb .
COPY Gemfile .
RUN bundler install
ENTRYPOINT ["ruby", "run.rb"]