FROM mcr.microsoft.com/playwright

RUN apt update

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt
# (NOTE : This is no longer useful since pytube was removed from the dependencies)
# RUN sed -i 's/re.compile(r"^\\w+\\W")/re.compile(r"^\\$*\\w+\\W")/' /usr/local/lib/python3.8/dist-packages/pytube/cipher.py

CMD ["python3", "main.py"]
