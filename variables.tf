variable "istest" {
    default = false
}
variable "users" {
   type = list(string)
   default = ["testuser","produser","devuser"]
}

variable "sg-name" {
    type = list
}

variable "vm-tag" {
    type = map
    default = {
      name = "check"
      env = "dev"
    }
}

variable "cidr" {
   default = "192.168.0.0/16"
    description = "This is internal IP for VM communication, its being used in SG"
}

variable "ami" {
  default = "ami-0e159fc62d940d348"
}

variable "ssh-port" {
   default = 22
}

variable "https-port" {
   default = 443
}

variable "http-port" {
   default = 80
}

variable "ftp-port" {
   default = 21
}