
resource "aws_subnet" "publicSubnet01" {
  vpc_id                  = aws_vpc.DVPC.id
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = true
  availability_zone =  data.aws_availability_zones.available.names[0]
  tags =  { Name = "DVPC-public-subnet-1"}
}


resource "aws_subnet" "publicSubnet02" {
  vpc_id                  = aws_vpc.DVPC.id
  cidr_block              = "10.0.10.0/24"
  map_public_ip_on_launch = true
  availability_zone =  data.aws_availability_zones.available.names[1]
  tags =  { Name = "DVPC-public-subnet-2"}
}


resource "aws_subnet" "privateSubnet01" {
  vpc_id                  = aws_vpc.DVPC.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[0]
  tags =  { Name = "DVPC-private-subnet-1"}
}


resource "aws_subnet" "privateSubnet02" {
  vpc_id                  = aws_vpc.DVPC.id
  cidr_block              = "10.0.11.0/24"
  map_public_ip_on_launch = false
  availability_zone = data.aws_availability_zones.available.names[1]
  tags =  { Name = "DVPC-private-subnet-2"}
}

resource "aws_subnet" "privateSubnet03" {
  vpc_id                  = aws_vpc.DVPC.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = false
  availability_zone = data.aws_availability_zones.available.names[0]
  tags =  { Name = "DVPC-private-subnet-3"}
}

resource "aws_subnet" "privateSubnet04" {
  vpc_id                  = aws_vpc.DVPC.id
  cidr_block              = "10.0.12.0/24"
  map_public_ip_on_launch = false
  availability_zone = data.aws_availability_zones.available.names[1]
  tags =  { Name = "DVPC-private-subnet-4"}
}

resource "aws_subnet" "privateSubnet05" {
  vpc_id                  = aws_vpc.DVPC.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = false
  availability_zone = data.aws_availability_zones.available.names[0]
  tags =  { Name = "DVPC-private-subnet-5"}
}

resource "aws_subnet" "privateSubnet06" {
  vpc_id                  = aws_vpc.DVPC.id
  cidr_block              = "10.0.13.0/24"
  map_public_ip_on_launch = false
  availability_zone = data.aws_availability_zones.available.names[1]
  tags =  { Name = "DVPC-private-subnet-6"}
}

