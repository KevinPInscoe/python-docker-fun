FROM python:3
ADD python_loop_output.py /
RUN pip install datetime
COPY python_loop_output.py python_loop_output.py
CMD [ "python", "-u", "python_loop_output.py" ]
