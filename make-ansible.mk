VAULT = "ansible/production/group_vars/all/vault.yml"

ansible-vaults-encrypt:
	ansible-vault encrypt $(VAULT)

ansible-vaults-decrypt:
	ansible-vault decrypt $(VAULT)

ansible-vaults-edit:
	ansible-vault edit $(VAULT)
