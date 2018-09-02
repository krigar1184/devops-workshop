VAULT = "ansible/production/group_vars/all/vault.yml"

production-setup:
	ansible-playbook ansible/site.yml -i ansible/production -u root -vv 

ansible-deps-install:
	ansible-galaxy-install -r ansible/requirements.yml

ansible-vaults-encrypt:
	ansible-vault encrypt $(VAULT)

ansible-vaults-decrypt:
	ansible-vault decrypt $(VAULT)

ansible-vaults-edit:
	ansible-vault edit $(VAULT)
