resource "aws_instance" "Docker_instance" {
  ami           = "ami-012967cc5a8c9f891"
  instance_type = "t2.micro"  
  key_name      = "docker-key"  
  vpc_security_group_ids = ["sg-094f5bde442fa7ee2"]
  user_data = file("userdata.sh")
  tags = {
    Name = "Docker-server"
  }
}

output "public_ip" {
  value = aws_instance.Docker_instance.public_ip
}