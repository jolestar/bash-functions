function docker-stop-all () {
    for i in `docker ps -q`
    do
        docker stop $i;
    done
}

function docker-rm-all () {
    for i in `docker ps -aq`
    do
        docker rm $i;
    done
}
