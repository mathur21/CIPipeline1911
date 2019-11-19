FROM ubuntu
#Image build for Sample.sh Intergeration
LABEL MAINTAINER Sneha.mathur@yahoo.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo "Image is build at `date`"
ENTRYPOINT ["sh","/code/Sample.sh"]
CMD ["/code/testfile"]
