resource "aws_subnet" "subnet_a" {
  vpc_id            = data.aws_vpc.existing_vpc.id
  cidr_block        = "10.0.10.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "Example-Subnet-A"
  }
}

resource "aws_subnet" "subnet_b" {
  vpc_id            = data.aws_vpc.existing_vpc.id
  cidr_block        = "10.0.11.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "Example-Subnet-B"
  }
}

# Optional: Remove this if IGW already exists
# resource "aws_internet_gateway" "gw" {
#   vpc_id = data.aws_vpc.existing_vpc.id
#   tags = {
#     Name = "datasource-Terraform-internet-gateway"
#   }
# }

resource "aws_security_group" "rds_sg" {
  name        = "rds-security-group-2"  # Changed name
  ...
}
