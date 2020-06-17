FROM ideonate/streamlit-single
RUN apt-get update
RUN apt-get install gcc git -y
RUN pip install --upgrade pip
RUN pip install --upgrade buildtools

RUN rm -r /app/*

ENV GITHUB_REPO=""

RUN ls /app/
RUN if [ "$GITHUB_REPO" = "" ]; \
    then echo "empty Github repo ARG"; \
    else git clone $GITHUB_REPO . ; \
    fi

RUN if test -f "requirements.txt" ; \
    then echo "requirements exists, installing dependencies" \
    && pip install -r ./requirements.txt ; \
    fi 
