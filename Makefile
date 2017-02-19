build:
	docker build -t mysql-tunnel .

build-no-cache:
	docker build --no-cache -t mysql-tunnel .

run:
	# Starting DockerTunnel-Mysql
	@docker run -d -p 0.0.0.0:3306:3306 -v $$HOME/.ssh:/tmp/.ssh -t mysql-tunnel ./start

clean:
	docker stop $$(docker ps -a -q)
	docker rm $$(docker ps -a -q)