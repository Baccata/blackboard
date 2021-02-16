FROM gitpod/workspace-full

RUN uname | tr LD ld
RUN sudo sh -c "curl -fLo cs https://git.io/coursier-cli-$(uname | tr LD ld)"
RUN sudo sh -c "chmod +x cs"

RUN ./cs install scala
RUN ./cs install scalafmt
RUN ./cs install sbt
