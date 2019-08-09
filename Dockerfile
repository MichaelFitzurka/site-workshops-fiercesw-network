FROM node:8-alpine

# Install base packages
RUN apk -U add wget tar gzip git asciidoctor

# Install Hugo
RUN cd /tmp && mkdir hugo-working && cd hugo-working && wget -c https://github.com/gohugoio/hugo/releases/download/v0.55.6/hugo_0.55.6_Linux-64bit.tar.gz -O - | tar -xz && mv hugo /usr/local/bin/hugo && cd / && rm -rf /tmp/hugo-working

# Install nginx
RUN \
  build_pkgs="build-base linux-headers openssl-dev pcre-dev wget zlib-dev" && \
  runtime_pkgs="ca-certificates openssl pcre zlib" && \
  apk --update add ${build_pkgs} ${runtime_pkgs} && \
  cd /tmp && \
  wget http://nginx.org/download/nginx-1.15.8.tar.gz && \
  tar xzf nginx-1.15.8.tar.gz && \
  cd /tmp/nginx-1.15.8 && \
  ./configure \
    --prefix=/etc/nginx \
    --sbin-path=/usr/sbin/nginx \
    --conf-path=/etc/nginx/nginx.conf \
    --error-log-path=/var/log/nginx/error.log \
    --http-log-path=/var/log/nginx/access.log \
    --pid-path=/var/run/nginx.pid \
    --lock-path=/var/run/nginx.lock \
    --http-client-body-temp-path=/var/cache/nginx/client_temp \
    --http-proxy-temp-path=/var/cache/nginx/proxy_temp \
    --http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp \
    --http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp \
    --http-scgi-temp-path=/var/cache/nginx/scgi_temp \
    --user=nginx \
    --group=nginx \
    --with-http_ssl_module \
    --with-http_realip_module \
    --with-http_addition_module \
    --with-http_sub_module \
    --with-http_dav_module \
    --with-http_flv_module \
    --with-http_mp4_module \
    --with-http_gunzip_module \
    --with-http_gzip_static_module \
    --with-http_random_index_module \
    --with-http_secure_link_module \
    --with-http_stub_status_module \
    --with-http_auth_request_module \
    --with-mail \
    --with-mail_ssl_module \
    --with-file-aio \
    --with-ipv6 \
    --with-threads \
    --with-stream \
    --with-stream_ssl_module \
    --with-http_slice_module \
    --with-http_v2_module && \
  make && \
  make install && \
  ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log && \
  adduser -D nginx && \
  rm -rf /tmp/* && \
  apk del ${build_pkgs} && \
  rm -rf /var/cache/apk/*

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /etc/nginx/sites-available/ && \
    mkdir -p /etc/nginx/sites-enabled/ && \
    mkdir -p /etc/nginx/ssl/ && \
    rm -Rf /var/www/* && \
    mkdir -p /var/www/html/cloudera && \
    mkdir -p /var/www/html/redhat
ADD conf/default-site /etc/nginx/sites-available/default.conf
RUN ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default.conf

#Build the Main Site Index
RUN cd /tmp && git clone https://github.com/FierceSoftware/site-workshops-fiercesw-network && \
    cd site-workshops-fiercesw-network && \
    cd main-index && \
    npm install --only=dev && npm install && npm start && \
    cp -R * /var/www/html/

#Build the Red Hat Workshops
RUN cd /tmp && cd site-workshops-fiercesw-network && \
    cd redhat && \
    hugo && \
    cp -R public/* /var/www/html/redhat/

#Build the Cloudera Workshops
RUN cd /tmp && cd site-workshops-fiercesw-network && \
    cd cloudera && \
    hugo && \
    cp -R public/* /var/www/html/cloudera/ && \
    cd / && rm -rf /tmp/*

#Serve it up
#VOLUME ["/var/cache/nginx"]

EXPOSE 8080

CMD ["nginx"]
