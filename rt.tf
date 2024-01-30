resource "aws_route_table" "myrt" {
        vpc_id = aws_vpc.abc.id
        route {
                cidr_block = "0.0.0.0/0"
                gateway_id = aws_internet_gateway.igw.id
        }
        tags = {
                Name = "my-route-table"
        }
}

 resource "aws_route_table_association" "public_subnet_association_1a" {
    subnet_id      = aws_subnet.mysubnet1.id
    route_table_id = aws_route_table.myrt.id
  }
  resource "aws_route_table_association" "public_subnet_association_1b" {
    subnet_id      = aws_subnet.mysubnet2.id
    route_table_id = aws_route_table.myrt.id
  }
