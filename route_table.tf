resource "aws_route_table" "public" {

    vpc_id = aws_vpc.main.id

    # route {

    #     cidr_block = "0.0.0.0/0"
    #     gateway_id = aws_internet_gateway.main
    # }

    tags = {
      name = "Public_route_table"
    }
}

resource "aws_route" "public_route" {

    route_table_id = aws_route_table.public.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id

}



###########################################################################################


resource "aws_route_table" "private_1" {

    vpc_id = aws_vpc.main.id

    # route {

    #     cidr_block = "0.0.0.0/0"
    #     nat_gateway_id = aws_nat_gateway.gw1.id
    # }

    tags = {
      name = "private_route_table_1"
    }
}

resource "aws_route" "private_route" {

    route_table_id = aws_route_table.private_1.id
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.gw1.id

}

