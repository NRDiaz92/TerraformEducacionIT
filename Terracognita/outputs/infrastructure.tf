provider "aws" {
}


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }

  }

  required_version = ">= 1.0"
}

resource "aws_eip" "educacionit_eip_us_east_1a" {
  tags = {
    Clase = "4"
    Name  = "EducacionIT-eip-us-east-1a"
  }

  tags_all = {
    Clase = "4"
    Name  = "EducacionIT-eip-us-east-1a"
  }

  network_border_group = aws_s3_bucket.proyecto_clase_4.region
  network_interface    = aws_nat_gateway.educacionit_nat_public1_us_east_1a.network_interface_id
  public_ipv4_pool     = "amazon"
  vpc                  = true
}

resource "aws_instance" "adriramos_ubuntu" {
  tags = {
    Name = "AdriRamos-Ubuntu"
  }

  tags_all = {
    Name = "AdriRamos-Ubuntu"
  }

  ami               = "ami-053b0d53c279acc90"
  availability_zone = "us-east-1a"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = aws_key_pair.adrianramos_ssh.id
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  private_ip = "172.16.13.212"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = aws_subnet.educacionit_subnet_public1_us_east_1a.id
  tenancy                = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_security_group_ids = [aws_security_group.sg_0b444a45657d0277f.id]
}

resource "aws_instance" "daniel_ubu" {
  tags = {
    Name = "Daniel-Ubu"
  }

  tags_all = {
    Name = "Daniel-Ubu"
  }

  ami               = "ami-053b0d53c279acc90"
  availability_zone = "us-east-1c"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = aws_key_pair.daniel_ssh.id
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  private_ip = "172.36.1.197"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = aws_subnet.private_subnet_01.id
  tenancy                = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_security_group_ids = [aws_security_group.sg_0c25bb821c580fc14.id]
}

resource "aws_instance" "daniela_ubuntu" {
  tags = {
    Name = "Daniela-ubuntu"
  }

  tags_all = {
    Name = "Daniela-ubuntu"
  }

  ami               = "ami-053b0d53c279acc90"
  availability_zone = "us-east-1a"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = aws_key_pair.daniela_ssh.id
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  private_ip = "172.16.5.225"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = aws_subnet.educacionit_subnet_public1_us_east_1a.id
  tenancy                = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_security_group_ids = [aws_security_group.sg_0b46f8c0d47080b69.id]
}

resource "aws_instance" "david_ubuntu" {
  tags = {
    Name = "David-ubuntu"
  }

  tags_all = {
    Name = "David-ubuntu"
  }

  ami               = "ami-053b0d53c279acc90"
  availability_zone = "us-east-1a"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = aws_key_pair.david_ssh.key_name
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  private_ip = "172.16.11.162"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = aws_subnet.educacionit_subnet_public1_us_east_1a.id
  tenancy                = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_security_group_ids = [aws_security_group.sg_0b79ead17c19d969e.id]
}

resource "aws_instance" "gonzalo_ubuntu" {
  tags = {
    Name = "Gonzalo-ubuntu"
  }

  tags_all = {
    Name = "Gonzalo-ubuntu"
  }

  ami               = "ami-053b0d53c279acc90"
  availability_zone = "us-east-1a"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = aws_key_pair.gonzalo_ssh.key_name
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  private_ip = "172.16.0.37"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = aws_subnet.educacionit_subnet_public1_us_east_1a.id
  tenancy                = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_security_group_ids = [aws_security_group.sg_0d3962fe41d4dd97f.id]
}

resource "aws_instance" "joselo_ubuntu" {
  tags = {
    Name = "Joselo-Ubuntu"
  }

  tags_all = {
    Name = "Joselo-Ubuntu"
  }

  ami               = "ami-053b0d53c279acc90"
  availability_zone = "us-east-1a"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = "Joselo-Ubuntu-nueva"
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  private_ip = "172.16.2.8"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = aws_subnet.educacionit_subnet_public1_us_east_1a.id
  tenancy                = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_security_group_ids = [aws_security_group.sg_0005e0b098f814805.id]
}

resource "aws_instance" "juan_agui_ubuntu" {
  tags = {
    Name = "Juan-Agui-Ubuntu"
  }

  tags_all = {
    Name = "Juan-Agui-Ubuntu"
  }

  ami               = "ami-053b0d53c279acc90"
  availability_zone = "us-east-1a"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = aws_key_pair.juan_agui.key_name
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  private_ip = "172.16.1.136"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = aws_subnet.educacionit_subnet_public1_us_east_1a.id
  tenancy                = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_security_group_ids = [aws_security_group.sg_00e6292fe59050cc1.id]
}

resource "aws_instance" "leandro_ubuntu" {
  tags = {
    Name = "Leandro-ubuntu"
  }

  tags_all = {
    Name = "Leandro-ubuntu"
  }

  ami               = "ami-053b0d53c279acc90"
  availability_zone = "us-east-1a"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = aws_key_pair.leandro_ssh.id
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "enabled"
  }

  private_ip = "172.16.3.220"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = aws_subnet.educacionit_subnet_public1_us_east_1a.id
  tenancy                = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_security_group_ids = [aws_security_group.sg_04bccb1f03e81f1b1.id]
}

resource "aws_instance" "lsobrino_ubuntu" {
  tags = {
    Name = "LSobrino-ubuntu"
  }

  tags_all = {
    Name = "LSobrino-ubuntu"
  }

  ami               = "ami-053b0d53c279acc90"
  availability_zone = "us-east-1a"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = aws_key_pair.lsobrino_ssh.id
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  private_ip = "172.16.2.212"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = aws_subnet.educacionit_subnet_public1_us_east_1a.id
  tenancy                = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_security_group_ids = [aws_security_group.sg_0bf6cb5d24617ff76.id]
}

resource "aws_instance" "luis_ubuntu" {
  tags = {
    Name = "Luis-Ubuntu"
  }

  tags_all = {
    Name = "Luis-Ubuntu"
  }

  ami               = "ami-053b0d53c279acc90"
  availability_zone = "us-east-1a"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = aws_key_pair.luisgarcia_ssh.key_name
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  private_ip = "172.16.14.155"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = aws_subnet.educacionit_subnet_public1_us_east_1a.id
  tenancy                = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_security_group_ids = [aws_security_group.sg_01ae75002f8932aee.id]
}

resource "aws_instance" "marco_ubunto" {
  tags = {
    Name = "Marco-ubunto"
  }

  tags_all = {
    Name = "Marco-ubunto"
  }

  ami               = "ami-053b0d53c279acc90"
  availability_zone = "us-east-1a"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = aws_key_pair.marco_ssh.id
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  private_ip = "172.16.0.176"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = aws_subnet.educacionit_subnet_public1_us_east_1a.id
  tenancy                = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_security_group_ids = [aws_security_group.sg_06e9b86e6082ad75d.id]
}

resource "aws_instance" "nicolas_ubuntu" {
  tags = {
    Name = "Nicolas-ubuntu"
  }

  tags_all = {
    Name = "Nicolas-ubuntu"
  }

  ami               = "ami-053b0d53c279acc90"
  availability_zone = "us-east-1a"
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = 1
  cpu_threads_per_core = 1
  credit_specification {
    cpu_credits = "standard"
  }

  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = aws_key_pair.nicolas_ssh.id
  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  private_ip = "172.16.4.253"
  root_block_device {
    delete_on_termination = true
    iops                  = 100
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check      = true
  subnet_id              = aws_subnet.educacionit_subnet_public1_us_east_1a.id
  tenancy                = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_security_group_ids = [aws_security_group.sg_0a8cb6cc8448f857a.id]
}

resource "aws_key_pair" "adrianramos_ssh" {
  key_name   = "AdrianRamos-ssh"
  public_key = ""
}

resource "aws_key_pair" "andreseppk" {
  key_name   = "andreseppk"
  public_key = ""
}

resource "aws_key_pair" "andresubu" {
  key_name   = "andresubu"
  public_key = ""
}

resource "aws_key_pair" "daniel_ssh" {
  key_name   = "daniel-ssh"
  public_key = ""
}

resource "aws_key_pair" "daniela_ssh" {
  key_name   = "Daniela-ssh"
  public_key = ""
}

resource "aws_key_pair" "david_ssh" {
  key_name   = "David-ssh"
  public_key = ""
}

resource "aws_key_pair" "german_segovia_suarez" {
  key_name   = "German Segovia Suarez"
  public_key = ""
}

resource "aws_key_pair" "gonzalo_ssh" {
  key_name   = "Gonzalo-ssh"
  public_key = ""
}

resource "aws_key_pair" "joselo" {
  key_name   = "Joselo"
  public_key = ""
}

resource "aws_key_pair" "joselo_ubuntu_nueva" {
  key_name   = "Joselo-Ubuntu-nueva"
  public_key = ""
}

resource "aws_key_pair" "juan_agui" {
  key_name   = "Juan-Agui"
  public_key = ""
}

resource "aws_key_pair" "leandro_ssh" {
  key_name   = "leandro-ssh"
  public_key = ""
}

resource "aws_key_pair" "lsobrino_ssh" {
  key_name   = "LSobrino-ssh"
  public_key = ""
}

resource "aws_key_pair" "luisgarcia_ssh" {
  key_name   = "LuisGarcia-ssh"
  public_key = ""
}

resource "aws_key_pair" "marco_claves_dos" {
  key_name   = "Marco_claves_dos"
  public_key = ""
}

resource "aws_key_pair" "marco_ssh" {
  key_name   = "Marco-ssh"
  public_key = ""
}

resource "aws_key_pair" "nicolas_ssh" {
  key_name   = "Nicolas-ssh"
  public_key = ""
}

resource "aws_key_pair" "ofOMv" {
  key_name   = "Leandro-ssh"
  public_key = ""
}

resource "aws_key_pair" "sebastian_ssh" {
  key_name   = "sebastian-ssh"
  public_key = ""
}

resource "aws_key_pair" "walterclave" {
  key_name   = "WalterClave"
  public_key = ""
}

resource "aws_key_pair" "walterz" {
  key_name   = "WalterZ"
  public_key = ""
}

resource "aws_db_parameter_group" "default_mysql8_0" {
  description = "Default parameter group for mysql8.0"
  family      = "mysql8.0"
  name        = "default.mysql8.0"
}

resource "aws_db_parameter_group" "default_postgres12" {
  description = "Default parameter group for postgres12"
  family      = "postgres12"
  name        = "default.postgres12"
}

resource "aws_db_subnet_group" "default_vpc_0fb754682da4cee49" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-0fb754682da4cee49"
  subnet_ids  = [aws_subnet.public_subnet_02.id, aws_subnet.private_subnet_01.id, aws_subnet.public_subnet_01.id]
}

resource "aws_db_subnet_group" "rds" {
  description = "RDS"
  name        = "rds"
  subnet_ids  = [aws_subnet.private_subnet_01.id, aws_subnet.private_subnet_02.id]
}

resource "aws_iam_policy" "arn_aws_iam__840134588965_policy_createlinkedrole" {
  name   = "createlinkedrole"
  path   = "/"
  policy = "{\"Statement\":[{\"Action\":[\"iam:CreateServiceLinkedRole\"],\"Effect\":\"Allow\",\"Resource\":[\"*\"]}],\"Version\":\"2012-10-17\"}"
}

resource "aws_iam_policy" "arn_aws_iam__840134588965_policy_dns_updater" {
  description = "Politica con permiso de actualizar los registros DNS para la vpn"
  name        = "DNS_Updater"
  path        = "/"
  policy      = "{\"Statement\":[{\"Action\":\"route53:ChangeResourceRecordSets\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:route53:::hostedzone/*\",\"Sid\":\"VisualEditor0\"},{\"Action\":\"route53:TestDNSAnswer\",\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor1\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_iam_role" "awsserviceroleforautoscaling" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"autoscaling.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Default Service-Linked Role enables access to AWS Services and Resources used or managed by Auto Scaling"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForAutoScaling"
  path                 = "/aws-service-role/autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforelasticloadbalancing" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"elasticloadbalancing.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Allows ELB to call AWS services on your behalf."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForElasticLoadBalancing"
  path                 = "/aws-service-role/elasticloadbalancing.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforglobalaccelerator" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"globalaccelerator.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Allows Global Accelerator to call AWS services on customer's behalf"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForGlobalAccelerator"
  path                 = "/aws-service-role/globalaccelerator.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforrds" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"rds.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Allows Amazon RDS to manage AWS resources on your behalf"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForRDS"
  path                 = "/aws-service-role/rds.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforsupport" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"support.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Enables resource access for AWS to provide billing, administrative and support services"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "awsservicerolefortrustedadvisor" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"trustedadvisor.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforautoscaling_arn_aws_iam__aws_policy_aws_service_role_autoscalingservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforautoscaling.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforelasticloadbalancing_arn_aws_iam__aws_policy_aws_service_role_awselasticloadbalancingservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforelasticloadbalancing.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforglobalaccelerator_arn_aws_iam__aws_policy_aws_service_role_awsglobalacceleratorslrpolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"
  role       = aws_iam_role.awsserviceroleforglobalaccelerator.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforrds_arn_aws_iam__aws_policy_aws_service_role_amazonrdsservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforrds.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforsupport_arn_aws_iam__aws_policy_aws_service_role_awssupportservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforsupport.id
}

resource "aws_iam_role_policy_attachment" "awsservicerolefortrustedadvisor_arn_aws_iam__aws_policy_aws_service_role_awstrustedadvisorservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = aws_iam_role.awsservicerolefortrustedadvisor.id
}

resource "aws_iam_user" "educacionit" {
  name                 = "EducacionIT"
  path                 = aws_iam_policy.arn_aws_iam__840134588965_policy_createlinkedrole.path
  permissions_boundary = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_user_policy_attachment" "educacionit_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.educacionit.name
}

resource "aws_internet_gateway" "educacionit_igw" {
  tags = {
    Clase = "4"
    Name  = "EducacionIT-igw"
  }

  tags_all = {
    Clase = "4"
    Name  = "EducacionIT-igw"
  }

  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_internet_gateway" "proyecto_igw" {
  tags = {
    Name = "proyecto-igw"
    name = "Clase-4"
  }

  tags_all = {
    Name = "proyecto-igw"
    name = "Clase-4"
  }

  vpc_id = aws_vpc.proyecto_vpc.id
}

resource "aws_internet_gateway" "pupos_internet_gateway" {
  tags = {
    Name = "Pupos_Internet_Gateway"
  }

  tags_all = {
    Name = "Pupos_Internet_Gateway"
  }

  vpc_id = aws_vpc.pupos_vpc.id
}

resource "aws_nat_gateway" "educacionit_nat_public1_us_east_1a" {
  tags = {
    Clase = "4"
    Name  = "EducacionIT-nat-public1-us-east-1a"
  }

  tags_all = {
    Clase = "4"
    Name  = "EducacionIT-nat-public1-us-east-1a"
  }

  allocation_id     = "eipalloc-090762e42cefc0196"
  connectivity_type = "public"
  subnet_id         = aws_subnet.educacionit_subnet_public1_us_east_1a.id
}

resource "aws_route_table" "educacionit_rtb_private" {
  tags = {
    Clase = "4"
    Name  = "EducacionIT-rtb-private"
  }

  tags_all = {
    Clase = "4"
    Name  = "EducacionIT-rtb-private"
  }

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.educacionit_nat_public1_us_east_1a.id
  }

  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_route_table" "educacionit_rtb_public" {
  tags = {
    Clase = "4"
    Name  = "EducacionIT-rtb-public"
  }

  tags_all = {
    Clase = "4"
    Name  = "EducacionIT-rtb-public"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.educacionit_igw.id
  }

  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_route_table" "private_table" {
  tags = {
    Name = "Private_Table"
  }

  tags_all = {
    Name = "Private_Table"
  }

  route {
    cidr_block           = "0.0.0.0/0"
    network_interface_id = "eni-03c153c4dc1e1467c"
  }

  vpc_id = aws_vpc.pupos_vpc.id
}

resource "aws_route_table" "proyecto_rtb_private1_us_east_1a" {
  tags = {
    Name = "proyecto-rtb-private1-us-east-1a"
    name = "Clase-4"
  }

  tags_all = {
    Name = "proyecto-rtb-private1-us-east-1a"
    name = "Clase-4"
  }

  vpc_id = aws_vpc.proyecto_vpc.id
}

resource "aws_route_table" "proyecto_rtb_private2_us_east_1b" {
  tags = {
    Name = "proyecto-rtb-private2-us-east-1b"
    name = "Clase-4"
  }

  tags_all = {
    Name = "proyecto-rtb-private2-us-east-1b"
    name = "Clase-4"
  }

  vpc_id = aws_vpc.proyecto_vpc.id
}

resource "aws_route_table" "proyecto_rtb_public" {
  tags = {
    Name = "proyecto-rtb-public"
    name = "Clase-4"
  }

  tags_all = {
    Name = "proyecto-rtb-public"
    name = "Clase-4"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.proyecto_igw.id
  }

  vpc_id = aws_vpc.proyecto_vpc.id
}

resource "aws_route_table" "public_table" {
  tags = {
    Name = "Public_Table"
  }

  tags_all = {
    Name = "Public_Table"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.pupos_internet_gateway.id
  }

  vpc_id = aws_vpc.pupos_vpc.id
}

resource "aws_route_table" "rtb_08bcd2b08a09b6af4" {
  vpc_id = aws_vpc.pupos_vpc.id
}

resource "aws_route_table" "rtb_0dcc088efe7218a46" {
  vpc_id = aws_vpc.proyecto_vpc.id
}

resource "aws_security_group" "sg_0005e0b098f814805" {
  description = "Joselo-SG-ssh"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Servidor ssh"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "Servidor web"
    from_port        = 80
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    to_port          = 80
  }

  name   = "Joselo-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_00e6292fe59050cc1" {
  description = "Juan-Agui-SG"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["181.94.229.43/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["181.94.229.43/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "Juan-Agui-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_013cacb02d1e0e18b" {
  description = "default VPC security group"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    from_port = 0
    protocol  = "-1"
    self      = true
    to_port   = 0
  }

  name   = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_01ae75002f8932aee" {
  description = "launch-wizard-4 created 2023-06-23T23:16:34.476Z"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["181.123.19.213/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["181.123.19.213/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "launch-wizard-4"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_021dbacce1d6e2c96" {
  description = "Gonzalo-gz"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["181.171.198.216/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["181.171.198.216/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "Gonzalo"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_022df8b606b30faa8" {
  description = "leandro-SG"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["181.161.218.43/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["181.161.218.43/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "leandro-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_02bf37aa1ef16d4a8" {
  description = "launch-wizard-1 created 2023-06-22T00:14:20.415Z"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["190.172.112.47/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["190.172.112.47/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "German-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_04bccb1f03e81f1b1" {
  description = "droguett-SG"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["181.161.218.43/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["181.161.218.43/32", "186.139.56.154/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  name   = "droguett-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_06e9b86e6082ad75d" {
  description = "launch-wizard-1 created 2023-06-22T00:14:24.250Z"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  name   = "Marco-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_074042576c22bbdd0" {
  description = "launch-wizard-2 created 2023-06-22T00:54:42.995Z"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["181.161.218.43/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0", "181.161.218.43/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  name   = "launch-wizard-2"
  vpc_id = aws_vpc.pupos_vpc.id
}

resource "aws_security_group" "sg_0832bd64d4ac63ea9" {
  description = "launch-wizard-1 created 2023-06-22T00:14:38.975Z"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["181.123.19.213/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["181.123.19.213/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "LuisGarcia-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_0872f7d040df9193c" {
  description = "launch-wizard-1 created 2023-06-22T00:14:21.238Z"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["186.51.129.190/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["186.51.129.190/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "Joselo-SG"
  vpc_id = aws_vpc.pupos_vpc.id
}

resource "aws_security_group" "sg_0a8cb6cc8448f857a" {
  description = "Nicolas-SG"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["186.139.56.154/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["186.139.56.154/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "Nicolas-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_0b444a45657d0277f" {
  description = "AdriRamos-SG"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["200.70.26.28/32", "186.139.56.154/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["200.70.26.28/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["200.70.26.28/32"]
    from_port   = 3000
    protocol    = "tcp"
    to_port     = 3000
  }

  name   = "AdriRamos-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_0b46f8c0d47080b69" {
  description = "EC2-instancia-test"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["152.170.240.188/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["152.170.240.188/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  name   = "Daniela-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_0b79ead17c19d969e" {
  description = "David-SG"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["186.158.200.243/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["186.158.200.243/32", "186.139.56.154/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  name   = "David-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_0bf6cb5d24617ff76" {
  description = "LSobrino-description-SG"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["186.22.54.193/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["186.22.54.193/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  name   = "LSobrino-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_0c25bb821c580fc14" {
  description = "launch-wizard-1 created 2023-06-22T00:14:36.935Z"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  name   = "launch-wizard-1"
  vpc_id = aws_vpc.pupos_vpc.id
}

resource "aws_security_group" "sg_0c34d60446e488366" {
  description = "default VPC security group"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    from_port = 0
    protocol  = "-1"
    self      = true
    to_port   = 0
  }

  name   = aws_vpc.proyecto_vpc.instance_tenancy
  vpc_id = aws_vpc.pupos_vpc.id
}

resource "aws_security_group" "sg_0d3962fe41d4dd97f" {
  description = "Gonzalo-SG"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["201.213.19.150/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["201.213.19.150/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "Gonzalo-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_security_group" "sg_0d3fd7c7550f75425" {
  description = "default VPC security group"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    from_port = 0
    protocol  = "-1"
    self      = true
    to_port   = 0
  }

  name   = "default"
  vpc_id = aws_vpc.proyecto_vpc.id
}

resource "aws_security_group" "sg_0ea98d5ea2d8d56a1" {
  description = "launch-wizard-3 created 2023-06-23T23:04:34.466Z"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["181.123.19.213/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["181.123.19.213/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "launch-wizard-3"
  vpc_id = aws_vpc.pupos_vpc.id
}

resource "aws_security_group" "sg_0fb2dc8b70c3bc79d" {
  description = "lean-SG"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["181.161.218.43/32"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["181.161.218.43/32"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "lean-SG"
  vpc_id = aws_vpc.educacionit_vpc.id
}

resource "aws_subnet" "educacionit_subnet_private1_us_east_1a" {
  tags = {
    Clase = "4"
    Name  = "EducacionIT-subnet-private1-us-east-1a"
  }

  tags_all = {
    Clase = "4"
    Name  = "EducacionIT-subnet-private1-us-east-1a"
  }

  availability_zone                   = "us-east-1a"
  cidr_block                          = "172.16.128.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.educacionit_vpc.id
}

resource "aws_subnet" "educacionit_subnet_private2_us_east_1b" {
  tags = {
    Clase = "4"
    Name  = "EducacionIT-subnet-private2-us-east-1b"
  }

  tags_all = {
    Clase = "4"
    Name  = "EducacionIT-subnet-private2-us-east-1b"
  }

  availability_zone_id                = "use1-az1"
  cidr_block                          = "172.16.144.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.educacionit_vpc.id
}

resource "aws_subnet" "educacionit_subnet_public1_us_east_1a" {
  tags = {
    Clase = "4"
    Name  = "EducacionIT-subnet-public1-us-east-1a"
  }

  tags_all = {
    Clase = "4"
    Name  = "EducacionIT-subnet-public1-us-east-1a"
  }

  availability_zone                   = "us-east-1a"
  cidr_block                          = "172.16.0.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.educacionit_vpc.id
}

resource "aws_subnet" "educacionit_subnet_public2_us_east_1b" {
  tags = {
    Clase = "4"
    Name  = "EducacionIT-subnet-public2-us-east-1b"
  }

  tags_all = {
    Clase = "4"
    Name  = "EducacionIT-subnet-public2-us-east-1b"
  }

  availability_zone                   = "us-east-1b"
  cidr_block                          = "172.16.16.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.educacionit_vpc.id
}

resource "aws_subnet" "private_subnet_01" {
  tags = {
    Name = "Private_Subnet-01"
  }

  tags_all = {
    Name = "Private_Subnet-01"
  }

  availability_zone                   = "us-east-1c"
  cidr_block                          = "172.36.1.0/24"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.pupos_vpc.id
}

resource "aws_subnet" "private_subnet_02" {
  tags = {
    Name = "Private-Subnet-02"
  }

  tags_all = {
    Name = "Private-Subnet-02"
  }

  availability_zone                   = "us-east-1b"
  cidr_block                          = "172.36.2.0/24"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.pupos_vpc.id
}

resource "aws_subnet" "proyecto_subnet_private1_us_east_1a" {
  tags = {
    Name = "proyecto-subnet-private1-us-east-1a"
    name = "Clase-4"
  }

  tags_all = {
    Name = "proyecto-subnet-private1-us-east-1a"
    name = "Clase-4"
  }

  availability_zone_id                = "use1-az6"
  cidr_block                          = "172.16.128.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.proyecto_vpc.id
}

resource "aws_subnet" "proyecto_subnet_private2_us_east_1b" {
  tags = {
    Name = "proyecto-subnet-private2-us-east-1b"
    name = "Clase-4"
  }

  tags_all = {
    Name = "proyecto-subnet-private2-us-east-1b"
    name = "Clase-4"
  }

  availability_zone_id                = "use1-az1"
  cidr_block                          = "172.16.144.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.proyecto_vpc.id
}

resource "aws_subnet" "proyecto_subnet_public1_us_east_1a" {
  tags = {
    Name = "proyecto-subnet-public1-us-east-1a"
    name = "Clase-4"
  }

  tags_all = {
    Name = "proyecto-subnet-public1-us-east-1a"
    name = "Clase-4"
  }

  availability_zone                   = "us-east-1a"
  cidr_block                          = "172.16.0.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.proyecto_vpc.id
}

resource "aws_subnet" "proyecto_subnet_public2_us_east_1b" {
  tags = {
    Name = "proyecto-subnet-public2-us-east-1b"
    name = "Clase-4"
  }

  tags_all = {
    Name = "proyecto-subnet-public2-us-east-1b"
    name = "Clase-4"
  }

  availability_zone                   = "us-east-1b"
  cidr_block                          = "172.16.16.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.proyecto_vpc.id
}

resource "aws_subnet" "public_subnet_01" {
  tags = {
    Name = "Public_Subnet-01"
  }

  tags_all = {
    Name = "Public_Subnet-01"
  }

  availability_zone                   = "us-east-1c"
  cidr_block                          = "172.36.0.0/25"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.pupos_vpc.id
}

resource "aws_subnet" "public_subnet_02" {
  tags = {
    Name = "Public_Subnet-02"
  }

  tags_all = {
    Name = "Public_Subnet-02"
  }

  availability_zone_id                = "use1-az1"
  cidr_block                          = "172.36.0.128/25"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.pupos_vpc.id
}

resource "aws_vpc" "educacionit_vpc" {
  tags = {
    Clase = "4"
    Name  = "EducacionIT-vpc"
  }

  tags_all = {
    Clase = "4"
    Name  = "EducacionIT-vpc"
  }

  cidr_block           = "172.16.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
}

resource "aws_vpc" "proyecto_vpc" {
  tags = {
    Name = "proyecto-vpc"
    name = "Clase-4"
  }

  tags_all = {
    Name = "proyecto-vpc"
    name = "Clase-4"
  }

  cidr_block           = "172.16.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
}

resource "aws_vpc" "pupos_vpc" {
  tags = {
    Name = "Pupos_VPC"
  }

  tags_all = {
    Name = "Pupos_VPC"
  }

  cidr_block         = "172.36.0.0/16"
  enable_dns_support = true
  instance_tenancy   = "default"
}

resource "aws_vpc_endpoint" "proyecto_vpce_s3" {
  tags = {
    Name = "proyecto-vpce-s3"
    name = "Clase-4"
  }

  tags_all = {
    Name = "proyecto-vpce-s3"
    name = "Clase-4"
  }

  policy            = "{\"Statement\":[{\"Action\":\"*\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"*\"}],\"Version\":\"2008-10-17\"}"
  route_table_ids   = [aws_route_table.proyecto_rtb_private1_us_east_1a.id, aws_route_table.proyecto_rtb_private2_us_east_1b.id]
  service_name      = "com.amazonaws.us-east-1.s3"
  vpc_endpoint_type = "Gateway"
  vpc_id            = aws_vpc.proyecto_vpc.id
}

resource "aws_route53_resolver_rule_association" "rslvr_autodefined_assoc_vpc_04e738f81f123d46f_internet_resolver" {
  name             = "System Rule Association"
  resolver_rule_id = "rslvr-autodefined-rr-internet-resolver"
  vpc_id           = aws_vpc.proyecto_vpc.id
}

resource "aws_route53_resolver_rule_association" "rslvr_autodefined_assoc_vpc_0e01f23a575945356_internet_resolver" {
  name             = "System Rule Association"
  resolver_rule_id = "rslvr-autodefined-rr-internet-resolver"
  vpc_id           = aws_vpc.educacionit_vpc.id
}

resource "aws_route53_resolver_rule_association" "rslvr_autodefined_assoc_vpc_0fb754682da4cee49_internet_resolver" {
  name             = "System Rule Association"
  resolver_rule_id = "rslvr-autodefined-rr-internet-resolver"
  vpc_id           = aws_vpc.pupos_vpc.id
}

resource "aws_s3_bucket" "educacionit_clase4_prueba" {
  arn            = "arn:aws:s3:::educacionit-clase4-prueba"
  bucket         = "educacionit-clase4-prueba"
  hosted_zone_id = "Z3AQBSTGFYJSTF"
}

resource "aws_s3_bucket" "proyecto_clase_4" {
  arn            = "arn:aws:s3:::proyecto-clase-4"
  bucket         = "proyecto-clase-4"
  hosted_zone_id = "Z3AQBSTGFYJSTF"
}

