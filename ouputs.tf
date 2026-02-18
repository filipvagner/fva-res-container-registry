output "id" {
  value = azurerm_container_registry.this.id
}

output "login_server" {
  value = azurerm_container_registry.this.login_server
}

output "admin_username" {
  value = azurerm_container_registry.this.admin_username
}

output "admin_password" {
  value = azurerm_container_registry.this.admin_password
  sensitive = true
}

output "images" {
  value = {
    for key, image in var.container_registry_images :
    key => {
      task_name       = image.task_name
      dockerfile_path = image.dockerfile_path
      context_path    = image.context_path
      image_names     = image.image_names
    }
  }
}
