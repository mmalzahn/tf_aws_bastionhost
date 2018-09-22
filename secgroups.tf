resource "aws_security_group" "SG_SSH_IN_from_anywhere" {
  name        = "${var.resource_prefix}_${terraform.workspace}_SG_SSH_IN_from_anywhere${var.resource_suffix}"
  description = "Allow SSH inbound traffic from anywhere for Project ${var.project_name}. env: _${terraform.workspace}_"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65534
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  lifecycle {
    ignore_changes = ["tags.tf_created"]
  }

  tags = "${merge(var.resource_tags,
             map(
               "Name", "${var.resource_prefix}_${terraform.workspace}_SG_DockerSocket_IN_from_Bastionhost${var.resource_suffix}"
               )
               )}"
}

resource "aws_security_group" "SG_Ping_enable" {
  count       = "${var.pingable ? 1 : 0}"
  name        = "${var.resource_prefix}_${terraform.workspace}_SG_Ping_enable${var.resource_suffix}"
  description = "Allow PING fuer Projekt ${var.project_name}. env: _${terraform.workspace}_"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  lifecycle {
    ignore_changes = ["tags.tf_created"]
  }

  tags = "${merge(var.resource_tags,
            map(
              "Name", "${var.resource_prefix}_${terraform.workspace}_SG_Ping_enable${var.resource_suffix}"
              )
              )}"
}
