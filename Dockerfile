FROM jekyll/jekyll

COPY Gemfile .
COPY Gemfile.lock .
ENV JEKYLL_ENV=production
#RUN bundle config set --local clean 'true'
RUN bundle install --quiet 
#RUN bundle clean --force
CMD ["jekyll", "serve", "--watch"]
