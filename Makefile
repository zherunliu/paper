.DEFAULT_GOAL=help

.PHONY: chore
chore: ## Regular maintenance
	git commit -m "chore: Regular maintenance"
	git push origin main

.PHONY: update
update: ## Introduce new features
	git commit -m "update: Update new content"
	git push origin main

.PHONY: fix
fix: ## Fix some bugs
	git commit -m "fix: Fix some bugs"
	git push origin main

.PHONY: refactor
refactor: ## Refactor code
	git commit -m "refactor: Adjust article structure"
	git push origin main

.PHONY: init
init: ## Initial commit
	rm -rf ./.git
	git init
	git remote add origin git@github.com:zherunliu/paper.git
	git add -A
	git commit -m "Initial commit"
	git push -f origin main --set-upstream

.PHONY: help
help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	cut -d ":" -f1- | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
