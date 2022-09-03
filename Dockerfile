#pull base image
FROM python:3.9

#set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#set work directory
WORKDIR /code

#install dependencies
COPY ./requirements.txt .
RUN python3 -m pip install -r requirements.txt  -i https://pypi.tuna.tsinghua.edu.cn/simple/

#copy project from local into docker-image
COPY . .

#ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]
