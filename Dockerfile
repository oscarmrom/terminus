FROM composer
RUN composer global require pantheon-systems/terminus:2.3.0
ENV PATH="/tmp/vendor/bin:${PATH}"
ENV TERMINUS_USER_HOME=/tmp
