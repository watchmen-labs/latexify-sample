IMAGE ?= latexify-offline
CTX   ?= .

.PHONY: build pytest pre post shell

build:
	@docker build --network=none -t $(IMAGE) -f Dockerfile $(CTX)

pytest:
	@docker run --rm -v "$$(pwd)":/work $(IMAGE) pytest

pre:
	@docker run --rm -v "$$(pwd)":/work $(IMAGE) pre

post:
	@docker run --rm -v "$$(pwd)":/work $(IMAGE) post

shell:
	@docker run --rm -it -v "$$(pwd)":/work $(IMAGE) bash