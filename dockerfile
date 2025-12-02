FROM python:latest

RUN useradd -m python_dev
USER python_dev

WORKDIR /home/python_dev/canelai

RUN pip install poetry
RUN git clone https://github.com/michaelorozcov/canelai_signals_generator.git

CMD ["tail", "-f", "/dev/null"]
