FROM jupyter/datascience-notebook

WORKDIR /app

COPY . /app

RUN pip install -r requirments.txt

EXPOSE 8888

ENV NAME World

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
