FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

USER root
WORKDIR /app
ADD . /app

RUN pip install pipenv
RUN pipenv install --system --deploy --ignore-pipfile

EXPOSE 8080

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]