variable "my_var" {
  type = string
  default = "Hello, World!"
}

module "debug" {
  source = "matti/resource/shell"
  command = "echo ${var.my_var}"
}

output "stdout" {
  value = module.debug.stdout
}
