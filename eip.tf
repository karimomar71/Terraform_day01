resource "aws_eip" "nat1" {

  depends_on = [aws_internet_gateway.main]

  tags = {
    name = "NAT_1"
  }
}

# resource "aws_eip" "nat2" {

#   depends_on = [aws_internet_gateway.main]
#   tags = {
#     name = "NAT_2"
#   }
# }