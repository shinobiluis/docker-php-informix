#FROM php:apache
FROM php:7.4.12-apache
COPY ./ibm/ibm.csdk.4.50.FC1.LNX.tar /tmp
COPY ./pdo/PDO_INFORMIX-1.3.3.tgz /tmp
COPY ./scripts/pdo.sh /tmp
COPY ./scripts/installCsdkIbm.sh /tmp
WORKDIR /tmp
RUN sh ./pdo.sh
RUN sh ./installCsdkIbm.sh 
WORKDIR /tmp/PDO_INFORMIX-1.3.3
RUN phpize
RUN sed -ie 's,elif test -f $prefix/include/php/ext/pdo/php_pdo_driver.h; then,elif test -f $prefix/include/php/ext/pdo/php_pdo_driver.h; then,g' configure
RUN sed -ie 's,pdo_inc_path=$prefix/include/php/ext, pdo_inc_path=$prefix/include/php/ext,g' configure
#RUN ./configure --with-pdo-informix=/opt/IBM/informix --with-php-config=/usr/bin/php-config7.2
RUN ./configure --with-pdo-informix=/opt/IBM/informix --with-php-config=/usr/local/bin/php-config
RUN make
RUN make install

RUN echo 'extension=pdo_informix.so' | tee -a /usr/local/etc/php/conf.d/pdo_informix.ini
#RUN ln -s /etc/php/7.2/apache2/conf.d/pdo_informix.ini /etc/php/7.2/cli/conf.d/20-pdo_informix.ini

RUN echo "export INFORMIXDIR=/opt/IBM/informix" >> /etc/apache2/envvars
RUN echo "export LD_LIBRARY_PATH=/opt/IBM/informix/lib:/opt/IBM/informix/lib/esql:/opt/IBM/informix/lib/cli:/opt/IBM/informix/lib/c++:/opt/IBM/informix/lib/client:/opt/IBM/informix/lib/dmi" >> /etc/apache2/envvars

CMD apachectl -D FOREGROUND
