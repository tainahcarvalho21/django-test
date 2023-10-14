FROM python:bullseye

WORKDIR /usr/src/app

COPY pyproject.toml ./
RUN pip install poetry 
RUN poetry install --no-cache
#RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "poetry", "run", "python", "./test.py" ]