### MANDATORY ###
variable "es_cluster" {
  description = "Name of the elasticsearch cluster, used in node discovery"
  default = "elasticsearch-echo"
}

variable "aws_region" {
  type = "string"
  default = "us-east-1"
}

variable "vpc_id" {
  description = "VPC ID to create the Elasticsearch cluster in"
  type = "string"
  default = "vpc-46eefd23"
}

variable "availability_zones" {
  type = "list"
  description = "AWS region to launch servers; if not set the available zones will be detected automatically"
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "key_name" {
  description = "Key name to be used with the launched EC2 instances."
  default = "elasticsearch"
}

variable "environment" {
  default = "default"
}

variable "data_instance_type" {
  type = "string"
  default = "t2.medium"
}

variable "master_instance_type" {
  type = "string"
  default = "t2.medium"
}

variable "elasticsearch_volume_size" {
  type = "string"
  default = "20" # gb
}

variable "volume_name" {
  default = "/dev/xvdh"
}

variable "volume_encryption" {
  default = true
}

variable "elasticsearch_data_dir" {
  default = "/opt/elasticsearch/data"
}

variable "elasticsearch_logs_dir" {
  default = "/var/log/elasticsearch"
}

# default elasticsearch heap size
variable "data_heap_size" {
  type = "string"
  default = "1g"
}

variable "master_heap_size" {
  type = "string"
  default = "1g"
}

variable "masters_count" {
  default = "3"
}

variable "datas_count" {
  default = "2"
}

variable "clients_count" {
  default = "1"
}

# whether or not to enable x-pack security on the cluster
variable "security_enabled" {
  default = "false"
}

# client nodes have nginx installed on them, these credentials are used for basic auth
variable "client_user" {
  default = "echoxu"
}
variable "client_pwd" {
  default = "2wsxXSW@"
}

# the ability to add additional existing security groups. In our case
# we have consul running as agents on the box
variable "additional_security_groups" {
  default = ""
}
