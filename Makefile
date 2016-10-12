image: ca-certs
	docker build -t quay.io/nitrous/ca-certs-scratch .
.PHONY: image

ca-certs:
	docker run --rm -v ${CURDIR}:/out --rm alpine \
		/bin/ash -c \
			"apk --no-cache add ca-certificates && cp /etc/ssl/certs/ca-certificates.crt /out/"
.PHONY: get-ca-certs
