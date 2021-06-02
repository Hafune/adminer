env_init_fn = @test -f $(1).env || cp $(1).env.example $(1).env

all: env-init up

env-init:
	$(call env_init_fn)

up:
	@docker-compose up -d --build
