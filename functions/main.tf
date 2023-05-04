# convert lowercase to uppercase

variable "sample" {
  default = "abcxyz"
}
output "sample" {
  value = upper(var.sample)
}
