variable "awsprops"{
  type = map(any)
  default ={
    region = "us-west-2"
    vpc = "vpc-074d436a6e43954af"
    ami = "ami-0ee8244746ec5d6d4"
    itype = "t3.micro"
    subnet = "subnet-07144afebd0c6558a"
    publicip = true
    keyname = "key1"
  }
}
variable "secgroupname" {
  type =map(any)
  default ={
    secgroupname = ["sg-04aafbb0ac8acad5a"]
  }
}
