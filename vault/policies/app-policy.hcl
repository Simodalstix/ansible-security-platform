# Application policy for service authentication
path "secret/data/apps/{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_namespace}}/{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}" {
  capabilities = ["read"]
}

# PKI certificate issuance
path "pki/issue/{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_namespace}}" {
  capabilities = ["create", "update"]
}

# Database dynamic credentials
path "database/creds/{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_namespace}}-*" {
  capabilities = ["read"]
}