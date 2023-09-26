SHELL:=/bin/bash

-include ./.rio4infra/Makefile

#----------------------
# Prepare
#----------------------
.ONESHELL:
prepare:
ifdef CODEBUILD_BUILD_NUMBER
	chmod 600 ~/.ssh/id_rsa
	ssh-keygen -F github.com || ssh-keyscan github.com >>~/.ssh/known_hosts
	git config --global url."git@github.com:".insteadOf "https://github.com/"
endif
	git submodule sync --recursive
	git submodule update --init --recursive --remote

.PHONY: prepare
