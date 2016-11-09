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

function docker-clean-img (){
    docker rmi $(docker images -q -f dangling=true)
}

function docker-clean-volume (){
    docker volume rm $(docker volume ls --filter dangling=true -q)
}
