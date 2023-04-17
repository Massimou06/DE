FROM python:3.10.1
LABEL maintainer="GUENANA MASSINISSA"

COPY Projet_ML.ipynb /app/
COPY requirements.txt /app/
WORKDIR /app

RUN pip install -r requirements.txt
RUN pip install jupyter

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
