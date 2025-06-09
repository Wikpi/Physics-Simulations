.PHONY: add-submodule update-submodules remove-submodule

add:
	./scripts/add-submodule.sh $(url) $(path)

update:
	./scripts/update-submodules.sh

remove:
	./scripts/remove-submodule.sh $(path)
