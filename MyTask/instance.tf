resource "aws_key_pair" "Mytask" {
  key_name   = "Mytask-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

 resource          "aws_instance" "web" {
    ami           = "ami-067f5c3d5a99edc80"  
    instance_type = "t2.large"
    associate_public_ip_address = "true"
    key_name      = "${aws_key_pair.Mytask.key_name}"
    

}  
  
 

