resource "aws_instance" "ec2_vm" {
  ami           = "ami-02384a901b5df8024"
  instance_type = "t3.micro"
  key_name      = "mohamed-ahnich-key"
  //tag ec2 instance with Etudiant and email as value
  tags = {
    Etudiant = "ahnich.m@gmail.com"
  }
  
  vpc_security_group_ids = ["${aws_security_group.default.id}"]

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
}

# Default ec2 user is "ec2-user"
