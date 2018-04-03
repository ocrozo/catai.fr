FROM jekyll/jekyll

COPY Gemfile .
COPY Gemfile.lock .
ENV JEKYLL_ENV=production
RUN bundle install --quiet --clean

CMD ["jekyll", "serve", "--watch","--incremental"]
