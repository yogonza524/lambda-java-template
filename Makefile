compile:
	docker run --rm \
	    -v ~/.gradle:/root/.gradle \
	    -v ${PWD}:/compile \
	    -w /compile \
	    adoptopenjdk/openjdk11 \
	    ./gradlew --daemon clean build $(ARG)

run:
	docker run --rm \
        	-v "${PWD}/build/docker":/var/task \
        	lambci/lambda:java11 \
        	com.keydev.Application '{}'
