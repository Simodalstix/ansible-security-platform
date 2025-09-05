# Admin policy for Vault administrators
path "*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# System backend access
path "sys/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Auth method configuration
path "auth/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}