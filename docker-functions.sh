getContainerIP() {
    [[ -z $1 ]] && { echo "Usage: ${FUNCNAME} CONTAINER-ID"; return; }
    docker inspect --format '{{ .NetworkSettings.IPAddress }}' $1
}

getContainerName() {
    [[ -z $1 ]] && { echo "Usage: ${FUNCNAME} CONTAINER-ID"; return; }
    docker inspect --format '{{ .Name }}' $1
}

getAllContainerIP() {
    for CONTAINER in $(docker ps -q); do
	printf "[%-12s] %-20s %s\n" ${CONTAINER} $(getContainerName ${CONTAINER}): $(getContainerIP ${CONTAINER})
    done
}

removeAllContainers() {
    docker rm $(docker ps -a -q)
}
