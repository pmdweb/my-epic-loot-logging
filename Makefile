.PHONY: install lint test run check
install:
	pip install -r requirements-dev.txt
lint:
	python -m pip install flake8 && flake8 app || true
test:
	pytest -q --cov=app
run:
	uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
check: lint test
