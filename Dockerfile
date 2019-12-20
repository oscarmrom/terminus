FROM composer
RUN composer global require pantheon-systems/terminus:2.2.0
RUN composer -n create-project pantheon-systems/terminus-site-clone-plugin:^2 ~/.terminus/plugins/terminus-site-clone-plugin
ENV PATH="/tmp/vendor/bin:${PATH}"
ENV TERMINUS_USER_HOME=/tmp
