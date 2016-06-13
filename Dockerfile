FROM sinatra:latest 
MAINTAINER Esteban Herrera <esteban.herrera.work@gmail.com>

COPY ./server.rb /root
COPY ./names.txt /root
COPY ./Gemfile* /root
RUN cd /root && bundle install
EXPOSE 4567

CMD ["ruby", "/root/server.rb"]

