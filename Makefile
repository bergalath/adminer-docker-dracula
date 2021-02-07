
.SILENT: # do not echo commands as we run them.

build: ## Build the image
	docker build -t bergalath/adminer-dracula:4.7.8 .

test: ## Test the image
	docker run --rm -it --entrypoint sh bergalath/adminer-dracula:4.7.8

push: build ## Push the image to docker hub
	docker push bergalath/adminer-dracula:4.7.8

help:
	grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: build push
.DEFAULT_GOAL := help
