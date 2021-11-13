
resource "aws_internet_gateway" "DIGW" {
  vpc_id = aws_vpc.DVPC.id
  tags =  { Name = "DVPC-IGW"}
}

resource "aws_eip" "DEIP" {
  vpc      = true  
  tags =  { Name = "DVPC-EIP"}

}

resource "aws_nat_gateway" "DNAT" {
  allocation_id = aws_eip.DEIP.id
  subnet_id     = aws_subnet.publicSubnet01.id 

  tags =  { Name = "DVPC-NAT"}
}

resource "aws_route_table" "routeTablePublic" {
  vpc_id = aws_vpc.DVPC.id 
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.DIGW.id}"
  }
  tags = { Name = "DVPC-public-route-table" } 
}

resource "aws_route_table" "routeTablePrivate" {
  vpc_id = aws_vpc.DVPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.DNAT.id}" 
  }
  tags = { Name = "DVPC-private-route-table" }

}
resource "aws_route_table_association" "publicRouting01" {
  subnet_id      = aws_subnet.publicSubnet01.id
  route_table_id = aws_route_table.routeTablePublic.id
}

resource "aws_route_table_association" "publicRouting02" {
  subnet_id      = aws_subnet.publicSubnet02.id
  route_table_id = aws_route_table.routeTablePublic.id
}


resource "aws_route_table_association" "privateRouting01" {
  subnet_id      = aws_subnet.privateSubnet01.id
  route_table_id = aws_route_table.routeTablePrivate.id
}
resource "aws_route_table_association" "privateRouting02" {
  subnet_id      = aws_subnet.privateSubnet02.id
  route_table_id = aws_route_table.routeTablePrivate.id
}

resource "aws_route_table_association" "privateRouting03" {
  subnet_id      = aws_subnet.privateSubnet03.id
  route_table_id = aws_route_table.routeTablePrivate.id
}
resource "aws_route_table_association" "privateRouting04" {
  subnet_id      = aws_subnet.privateSubnet04.id
  route_table_id = aws_route_table.routeTablePrivate.id
}
resource "aws_route_table_association" "privateRouting05" {
  subnet_id      = aws_subnet.privateSubnet05.id
  route_table_id = aws_route_table.routeTablePrivate.id
}
resource "aws_route_table_association" "privateRouting06" {
  subnet_id      = aws_subnet.privateSubnet06.id
  route_table_id = aws_route_table.routeTablePrivate.id
}