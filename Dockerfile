FROM perl:5.36-bullseye AS BUILD
WORKDIR /service
RUN cpan App::cpanminus
COPY cpanfile .
RUN cpanm --installdeps .

FROM BUILD
COPY lib ./lib
COPY app.pl .
EXPOSE 3000
# Runs application with multiple threads
CMD ["perl", "app.pl", "prefork", "-m", "production"]
