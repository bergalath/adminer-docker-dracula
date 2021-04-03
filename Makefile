
.SILENT: # do not echo commands as we run them.

VERSION := 4.8.0-2

build: ## Build the image
	docker build --no-cache --pull -t bergalath/adminer-dracula:$(VERSION) .

up: ## Run the image with a pg image
	docker-compose up

run: ## Run inside the image
	docker run --rm -it --entrypoint sh bergalath/adminer-dracula:$(VERSION)

push: build ## Push the image to docker hub
	git add --all .
	git commit -m 'Update to v$(VERSION)'
	git tag v$(VERSION)
	git push origin --tags
	docker push bergalath/adminer-dracula:$(VERSION)

help:
	grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: build up run push help
.DEFAULT_GOAL := help
