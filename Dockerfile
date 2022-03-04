FROM ruby:3.0.2

RUN mkdir portainer-test
WORKDIR /portainer-test
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY . .

CMD [ "rails", "s","-b","0.0.0.0" ]

