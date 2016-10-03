FROM java:8

ENV PORT 8080

RUN mkdir /app
ADD target/universal/stage  /app/stage

CMD ["app/bin/hello-world", "--", "-admin.port=:$PORT", "-http.port=:$PORT"]

