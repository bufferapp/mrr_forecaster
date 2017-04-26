
NAME = julheimer/mrr_forecaster:beta

.PHONY: all build run dev

all: run

build:
	docker build -t $(NAME) .

run:
	docker run -it --rm --env-file ./.env $(NAME)

dev:
	docker run -v $(PWD):/app -it --rm --env-file ./.env $(NAME)