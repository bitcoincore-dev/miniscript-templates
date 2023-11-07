.ONESHELL:
docker-start:## 	start docker on Linux or Darwin
	@( \
	    while ! docker system info > /dev/null 2>&1; do\
	    echo 'Waiting for docker to start...';\
	    if [[ '$(OS)' == 'Linux' ]] && [[ '$(CI)' != "True" ]]; then\
	     type -P systemctl && systemctl restart docker.service || type -P service && service restart docker;\
	    fi;\
	    if [[ '$(OS)' == 'Darwin' ]] && [[ '$(CI)' != "True" ]]; then\
	     type -P docker && open --background -a /./Applications/Docker.app/Contents/MacOS/Docker || brew install --cask docker;\
	    fi;\
	sleep 1;\
	done\
	)
