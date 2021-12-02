FROM localhost:5000/whanos-c:latest

ENTRYPOINT [ "/bin/bash", "-c" ]

RUN apt install -y make

WORKDIR /app

COPY . /app/

RUN make

RUN find . -name "*.[co]"-delete

CMD [ "./compiled-app" ]
