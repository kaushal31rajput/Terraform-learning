cidr = "0.0.0.0/0"
ftp-port = 21
ssh-port = 22
http-port = 80
https-port = 443
ami = "ami-0e159fc62d940d348"
sg-name = ["ec2group1","allow-all","manually-created-sg"]
vm-tag = {
     Name = "vm-2-learning",
     version = 1,
     env = "prod"
     application = "nginx"
  }