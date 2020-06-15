FROM ideonate/streamlit-single
RUN apt-get update
RUN apt-get install gcc git -y
RUN pip install --upgrade pip
RUN pip install --upgrade buildtools

ARG GITHUB_REPO=https://github.com/streamlit/demo-face-gan/

RUN rm -r /app/*

RUN git clone $GITHUB_REPO .
RUN pip install -r ./requirements.txt


