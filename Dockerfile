FROM continuumio/anaconda3

RUN /opt/conda/bin/conda install jupyter \
  pandas numpy openpyxl seaborn -y --quiet \
  && mkdir -p /app

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/app", "--ip='*'", "--port=8888"]
