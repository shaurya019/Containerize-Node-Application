FROM node

COPY index.js /home/app/index.js
COPY package.json  /home/app/package.json

WORKDIR /home/app

RUN npm install

EXPOSE 3001

CMD ["node", "index"]

# command - docker build -t node-app .

# command to pull - docker run -it -P NAMEOFREPO
# P->automatic port mapping

# command for giving your name instead of default to Image
# docker run -itd --name NAME --rm DockerImageName
# eg:DockerImageName -> python,busybox


# command to go inside image
# docker exec -ut NAME sh

# command create newtwork
# docker network create NAME


# command to attach the image to particular network 
# docker run -itd --network NAMEOFNETWORK --rm --name NAME DockerImageName

# docker netowork connect
# docker network connect network1 network2

# run on different port PORT MAPING
# docker run -itd -p YOURPORT:IMAGEPORT --name NAME DockerImageName
# docker run -itd -p 1234:80 --name server nginx


# attach volume
# docker run -d --name devtest -v myvol2:/app nginx:latest