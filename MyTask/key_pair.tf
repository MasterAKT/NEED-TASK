resource "aws_key_pair" "Mytask" {
  key_name   = "Mytask-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
