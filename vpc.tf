
resource "aws_vpc" "DVPC" {
  cidr_block = "10.0.0.0/16"
  tags =  { Name = "DVPC"}
}

E
resource "aws_internet_gateway" "DIGW" {
  vpc_id = aws_vpc.DVPC.id
  tags =  { Name = "DVPC-IGW"}
}

resource "aws_subnet" "publicSubnet01" {
  vpc_id                  = aws_vpc.DVPC.id
  cidr_block              = "10.0.0.0/24"
  //map_public_ip_on_launch = true
  availability_zone = ["$data.aws_availability_zones.available.names"]
  tags =  { Name = "DVPC-public-subnet-1"}
}


resource "aws_subnet" "publicSubnet02" {
  vpc_id                  = aws_vpc.DVPC.id
  cidr_block              = "10.0.10.0/24"
  //map_public_ip_on_launch = true
  availability_zone = ["$data.aws_availability_zones.available.names"]
  tags =  { Name = "DVPC-public-subnet-2"}
}