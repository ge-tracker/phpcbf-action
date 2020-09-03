FROM php:7.3-alpine

RUN wget https://github.com/squizlabs/PHP_CodeSniffer/releases/download/3.5.6/phpcbf.phar -O phpcbf \
    && chmod a+x phpcbf \
    && mv phpcbf /usr/local/bin/phpcbf

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
