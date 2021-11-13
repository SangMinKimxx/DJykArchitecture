resource "aws_vpc" "DVPC" {
  cidr_block = "10.0.0.0/16"
  tags =  { Name = "DVPC"}
}