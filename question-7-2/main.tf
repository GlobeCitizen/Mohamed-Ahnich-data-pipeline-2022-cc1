resource "aws_instance" "ec2_vm" {
  ami           = "ami-02384a901b5df8024"
  instance_type = "t3.micro"
  key_name      = "mohamed-ahnich-key"

  //tag ec2 instance with Etudiant and email as value
  tags = {
    Etudiant = "ahnich.m@gmail.com"
  }
  
  vpc_security_group_ids = ["${aws_security_group.default.id}"]

    user_data = <<-EOL
    #!/bin/bash
    sudo yum update -y
    sudo yum install -y python
    sudo yum install -y pip
    sudo pip install boto3
    sudo python 
    EOL

}

# Default ec2 user is "ec2-user"
