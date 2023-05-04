# convert lowercase to uppercase

variable "sample" {
  default = "abcxyz"
}
output "sample" {
  value = upper(var.sample)
}

variable "sample1" {
  default = ["abc" "xyz"]
}

output "sample" {
  value = element(var.sample1,0)
}