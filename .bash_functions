cdls () {
cd $1 && ls
}

ccd () {
  cd $(printf "%0.s../" $(seq 1 $1 ));
}
inhouse() {
	cd /home/mahesh/PycharmProjects/odoo_selenium_attendance 2> /dev/null
	source venv/bin/activate 2> /dev/null
	python3 attend.py $1 
	deactivate 2> /dev/null
	cd - 2> /dev/null
}
dockerodoo () {
	docker stop $1 && docker start -i $1
}

dirmd5 (){
	for f in $(ls $1); do
    if [[ -d $f ]]; then
        echo $f "---" $(ls -alR $f | md5sum | awk '{print $1;}')
    fi
	done
}
showpkg () {
  apt-cache pkgnames | grep -i "$1" | sort
  return;
}

numfiles ()
 { 
    N="$(ls $1 | wc -l)"; 
    echo "$N files in $1";
}

mkcd () 
{ 
	mkdir -p $1; cd $1 
}
myip () {

	ifconfig | grep -A1 $1 | grep inet | awk '{print $2}'

}
dockerip () {
	docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $1
}


dexec () {
	sudo docker exec -u 0 -it $1 bash
}

