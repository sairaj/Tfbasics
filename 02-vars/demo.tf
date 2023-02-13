variable "City" {} # This is how we declare an empty variable

output "printing-city"{
    value = "value of the city is ${var.City}"
}

variable "State" {}

output "print-state"{
    value = "Name of the state is ${var.State}"
}