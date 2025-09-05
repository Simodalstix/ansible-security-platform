.PHONY: security-deploy vault-deploy wazuh-deploy pki-deploy compliance-audit

security-deploy: vault-deploy pki-deploy wazuh-deploy
	@echo "🔒 Deploying Zero-Trust Security Platform..."
	ansible-playbook -i inventory/hosts playbooks/security-deploy.yml

vault-deploy:
	@echo "🔐 Deploying HashiCorp Vault..."
	ansible-playbook -i inventory/hosts playbooks/vault-deploy.yml

wazuh-deploy:
	@echo "🛡️ Deploying Wazuh SIEM..."
	ansible-playbook -i inventory/hosts playbooks/wazuh-deploy.yml

pki-deploy:
	@echo "📜 Deploying PKI Authority..."
	ansible-playbook -i inventory/hosts playbooks/pki-deploy.yml

compliance-audit:
	@echo "📊 Running Compliance Audit..."
	ansible-playbook -i inventory/hosts playbooks/compliance-audit.yml

threat-response:
	@echo "🚨 Executing Threat Response..."
	ansible-playbook -i inventory/hosts playbooks/threat-response.yml

cert-rotation:
	@echo "🔄 Rotating Certificates..."
	ansible-playbook -i inventory/hosts playbooks/cert-rotation.yml