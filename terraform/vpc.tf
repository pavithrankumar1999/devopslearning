resource "aws_vpc" "new_vpc" {
  cidr_block = var.block1
  tags = {
    Name = var.vpcname
  }
}

resource "aws_subnet" "pubsubnet1" {
  vpc_id = aws_vpc.new_vpc.id
  cidr_block = var.block2
  availability_zone = "us-west-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = var.pubsubnet1
  }
}

resource "aws_subnet" "privatesubnet1" {
  vpc_id = aws_vpc.new_vpc.id
  cidr_block = var.block3
  availability_zone = "us-west-2b"
  map_public_ip_on_launch = true
  tags = {
    Name = var.privatebsubnet1
  }
}

resource "aws_internet_gateway" "new_igw" {
  vpc_id = aws_vpc.new_vpc.id
  tags = {
    Name = "NewIGW"
  }
}

resource "aws_route_table" "new_rt" {
  vpc_id = aws_vpc.new_vpc.id
  route {
    cidr_block = var.block4
    gateway_id = aws_internet_gateway.new_igw.id
  }
  tags = {
    Name = "New_RT"
  }
}

resource "aws_route_table_association" "new_association" {
  route_table_id = aws_route_table.new_rt.id
  subnet_id = aws_subnet.pubsubnet1.id
}