resource "aws_instance" "andrey-example" {
  ami           = var.AMIS[var.region]
  instance_type = "t2.micro"
  subnet_id= "subnet-06ce4996838ec4d88"
  vpc_security_group_ids = ["sg-04f2d5d1786a702f1"]
  tags = {
    Name = "andrey-demo4"
  }
  
  provisioner "local-exec" {
    command = "echo ${aws_instance.andrey-example.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  value = aws_instance.andrey-example.public_ip
}
