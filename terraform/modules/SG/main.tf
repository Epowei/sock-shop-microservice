# create security group for the EKS cluster
resource "aws_security_group" "eks-sg" {
  name        = var.sg-name
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc-id
  

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
      
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
  
 egress {
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1"
       
 }

  tags = {
    Name = "allow-tls"
  }
}