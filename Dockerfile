FROM ruby:3.0.5

RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY . /app

EXPOSE 3000

CMD ["bash"]
