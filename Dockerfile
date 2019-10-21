FROM asciidoctor/docker-asciidoctor

RUN mkdir /workspace && wget -O /workspace/swagger2markup.jar https://repo1.maven.org/maven2/io/github/swagger2markup/swagger2markup-cli/1.3.3/swagger2markup-cli-1.3.3.jar
ADD swagger2markup.sh /bin/swagger2markup
RUN chmod +x /bin/swagger2markup
ENTRYPOINT ["/bin/bash"]