FROM python:3.6-stretch

RUN pip install tensorflow
RUN pip install keras
RUN pip install -U matplotlib
RUN pip install Pillow
RUN pip install jupyter

# CMD jupyter notebook
ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
