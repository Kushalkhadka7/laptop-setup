.PHONY: test lint apply 

yaml-lint:
	@yamllint .

syntax-check:
	@ansible-playbook main.yml --syntax-check

lint:
	@ansible-lint main.yml

apply:
	@ansible-playbook main.yml

test: yaml-lint syntax-check lint