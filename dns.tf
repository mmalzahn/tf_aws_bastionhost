# resource "aws_route53_record" "dockerhost_masterintern" {
#   allow_overwrite = "true"
#   depends_on      = ["aws_instance.internerDockerhostMaster"]
#   name            = "docker0.intern.${terraform.workspace}"
#   ttl             = "60"
#   type            = "A"
#   records         = ["${aws_instance.internerDockerhostMaster.private_ip}"]
#   zone_id         = "${data.aws_route53_zone.dca_poc_domain.zone_id}"
# }