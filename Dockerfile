FROM perl:5.36-bullseye
RUN cpan App::cpanminus
WORKDIR /service
COPY lib ./lib
COPY templates ./templates
COPY app.pl .
RUN cpanm --installdeps .
EXPOSE 3000
# Runs application with multiple threads
CMD ["perl", "app.pl", "prefork", "-m", "production"]

