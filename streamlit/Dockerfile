
FROM python:3.7.2-slim
LABEL maintainer="moracabanas <moracabanas@live.com>"

COPY docker-entrypoint.sh /srv/docker-entrypoint.sh
RUN ["chmod", "+x", "/srv/docker-entrypoint.sh"]

# backwards compat
#RUN ln -s /srv/docker-entrypoint.sh

ENV EXPOSED_PORT=8888
ENV GITHUB_REPO=""


EXPOSE ${EXPOSED_PORT}

WORKDIR /app

RUN apt-get update
RUN apt-get install gcc git -y
RUN pip install --upgrade pip buildtools
RUN pip install streamlit

#This RUN is a test for some openCV dependencies
RUN apt-get install libglib2.0-0 libsm6 libxext6 libxrender-dev -y

ENTRYPOINT [ "/srv/docker-entrypoint.sh"]

CMD []