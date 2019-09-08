FROM debian:9.5-slim

LABEL "com.github.actions.name"="Particle"
LABEL "com.github.actions.description"="Invoke a Particle Function"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/mattdsteele/particle-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="mattdsteele <orphum@gmail.com>"

RUN apt-get update && apt-get install -y curl
ADD particle.sh /particle.sh
ENTRYPOINT ["/particle.sh"]