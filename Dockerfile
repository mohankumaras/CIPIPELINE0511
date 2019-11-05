FROM ubuntu
ENV ORA_CLOUD_CLUSTER="ASHBURN"
ARG LICENSE_KEY="123-8648642-8847474"
LABEL MAINTAINER mohan.kumar.a.s@oracle.com

COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile

RUN chmod +x /code/Sample.sh
RUN echo License key is "$LICENSE_KEY"
WORKDIR /code

#ENTRYPOINT ["sh", "Sample.sh"]
CMD sh Sample.sh testfile
