
build:
	@python3 -m venv venv
	@. venv/bin/activate && \
	pip install yamllint && \
	(yamllint . && echo "🟢 YAMLLINT PASS") || (echo "🔴 YAMLLINT FAIL" && exit 1)

clean:
	npx rimraf venv
