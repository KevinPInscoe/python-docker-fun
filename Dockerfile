FROM python:3
ADD python_loop_output.py /
CMD [ "python", "-u", "./python_loop_output.py"
