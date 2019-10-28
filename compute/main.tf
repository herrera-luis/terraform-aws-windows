data "aws_ami" "server_ami" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "image-id"
    values = ["ami-0402c96695b31be74"]
  }
}

resource "aws_key_pair" "tf_auth" {
  key_name   = "${var.key_name}"
  public_key = "${file(var.public_key_path)}"
}

resource "aws_instance" "tf_server" {
  count         = "${var.instance_count}"
  instance_type = "${var.instance_type}"
  ami           = "${data.aws_ami.server_ami.id}"

  tags = {
    Name = "tf_server-${count.index +1}"
  }

  key_name               = "${aws_key_pair.tf_auth.id}"
  vpc_security_group_ids = ["${var.security_group}"]
  subnet_id              = "${element(var.subnets, count.index)}"

  user_data = <<EOF
<powershell>
Start-Process -FilePath "docker" -ArgumentList "run -d -p 80:4321 herreraluis/dotnetcore-app" -Wait
</powershell>
  EOF

}