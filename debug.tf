# resource "local_file" "bastionAmi" {
#   count    = "${var.debug_on ? 1 : 0 }"
#   content  = "${data.aws_ami.bastionhostPackerAmi.id}"
#   filename = "${path.module}/debug/${terraform.workspace}/dockerAmiId.txt"
# }
# resource "local_file" "projectId" {
#   count    = "${var.debug_on ? 1 : 0 }"
#   content  = "${random_string.projectId.result}"
#   filename = "${path.module}/debug/${terraform.workspace}/projectId.txt"
# }
# resource "local_file" "randomPorts" {
#   count    = "${var.debug_on ? 1 : 0 }"
#   content  = "ssh intern: ${random_integer.randomSshPortIntern.result}\ndocker intern: ${random_integer.randomDockerPortIntern.result}\nssh extern: ${random_integer.randomSshPortExtern.result}\ndocker extern: ${random_integer.randomDockerPortExtern.result}"
#   filename = "${path.module}/debug/${terraform.workspace}/randomPorts.txt"
# }
