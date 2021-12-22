resource "aws_instance" "terraform-test" {
    ami = "ami-0ed9277fb7eb570c9"
    instance_type = "t2.micro"

    	user_data =<<-EOF
	     #!/bin/bash
	     echo "hello bala" > index.html
	     nohup busybox httpd -f -p 8080 &
	     EOF

    tags = {
      "Name" = "tf-test"
    }
  
}
