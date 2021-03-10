provider "aws"  {
	region ="ap-south-1"
	profile ="<name>"
}



resource "aws_instance" "var1" {
	ami ="ami-0447a12f28fddb066"
	instance_type ="t2.micro"
	key_name ="<keyname>"
	security_groups =["firewalld"]

tags = {
	Name="TerraOS1"
}
}

resource "aws_instance" "var2" {
	ami ="ami-0447a12f28fddb066"
	instance_type ="t2.micro"
	key_name ="seckeyos111"
	security_groups =["firewalld"]

tags = {
	Name="TerraOS2"
}
}
 
resource "aws_ebs_volume" "ebs0"  {
	availability_zone = aws_instance.var1.availability_zone
	size =1
tags = {
	Name ="PD_storage"
}
}

resource "aws_volume_attachment" "ebs1"  {
	volume_id =aws_ebs_volume.ebs0.id
	device_name ="/dev/sdd"
	instance_id =aws_instance.var1.id
}