resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "subnet_ids"{
  name = "/${var.project}/${var.environment}/public_subnet_ids"
  type = "StringList"
  value = join("," , module.vpc.public_subnet_ids)
}