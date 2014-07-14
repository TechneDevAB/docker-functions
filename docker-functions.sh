getContainerIP() {
    [[ -z $1 ]] && { echo "Usage: ${FUNCNAME} CONTAINER-ID"; return; }
    docker inspect --format '{{ .NetworkSettings.IPAddress }}' $1
}

getAllContainerIP() {
    for CONTAINER in $(docker ps -q); do
	echo "${CONTAINER}: $(getContainerIP ${CONTAINER})";
    done
}

removeAllContainers() {
    docker rm $(docker ps -a -q)
}
