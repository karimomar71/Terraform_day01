resource "aws_subnet" "public_1" {

  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.0.0/18"
  availability_zone       = "us-east-1"
  map_public_ip_on_launch = true

  tags = {
    name = "Public_sub_1"
  }
}

resource "aws_subnet" "public_2" {

  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.64.0/18"
  availability_zone       = "us-east-2"
  map_public_ip_on_launch = true

  tags = {
    name = "Public_sub_2"
  }
}

#######################

resource "aws_subnet" "private_1" {

  vpc_id            = aws_vpc.main.id
  cidr_block        = "192.168.128.0/18"
  availability_zone = "us-east-1"

  tags = {
    name = "private_sub_1"
  }
}

resource "aws_subnet" "private_2" {

  vpc_id            = aws_vpc.main.id
  cidr_block        = "192.168.192.0/18"
  availability_zone = "us-east-2"

  tags = {
    name = "private_sub_2"
  }
}