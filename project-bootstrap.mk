UPDO_COMMIT_HASH ?= be340479ae345314a48e78ce3cc3c438a76208c1
UPDO_REPO_ROOT := https://github.com/cabalism/updo
UPDO_ARCHIVE := ${UPDO_REPO_ROOT}/archive/${UPDO_COMMIT_HASH}.tar.gz
UPDO_REF := ${UPDO_REPO_ROOT}/commit/${UPDO_COMMIT_HASH}
updo/Makefile:
	$(info Referencing Updo at $(UPDO_REF))
	rm -rf updo
	curl -sSL ${UPDO_ARCHIVE} | tar -xz
	mv updo-* updo
	chmod +x $$(grep -RIl '^#!' updo)
