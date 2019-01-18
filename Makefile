.PHONY: test
test: shellcheck

.PHONY: shellcheck
shellcheck:
	docker run --rm -i $(DOCKER_FLAGS) \
		--name df-shellcheck \
		-v $(CURDIR):/usr/src:ro \
		--workdir /usr/src \
		r.j3ss.co/shellcheck shellcheck rofi_notes.sh