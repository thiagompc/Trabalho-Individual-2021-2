FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /aplicacao

ADD Gemfile ./
ADD Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000

COPY entry.sh /usr/bin/

RUN chmod +x /usr/bin/entry.sh

ENTRYPOINT ["entry.sh"]

CMD ["rails", "server", "-b", "0.0.0.0"]
