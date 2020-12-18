
build: ## Build the image
	docker build -t bergalath/adminer-dracula .

push: build ## Push the image to docker hub
	docker push bergalath/adminer-dracula

help:
	grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: build push
.DEFAULT_GOAL := help
