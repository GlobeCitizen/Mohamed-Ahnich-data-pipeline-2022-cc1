resource "aws_instance" "ec2_vm" {
  ami           = "ami-02384a901b5df8024"
  instance_type = "t3.micro"
  key_name      = "mohamed-ahnich-key"
  //tag ec2 instance with Etudiant and email as value
  tags = {
    Etudiant = "ahnich.m@gmail.com"
  }
  
  vpc_security_group_ids = ["${aws_security_group.default.id}"] 
}

resource "aws_kinesis_stream" "test_stream" {
  name             = "Mohamed-Ahnich-stock-input-stream"
  shard_count      = 1
  retention_period = 48

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]

  stream_mode_details {
    stream_mode = "PROVISIONED"
  }

  tags = {
    Etudiant = "ahnich.m@gmail.com"
  }
}


# Default ec2 user is "ec2-user"
