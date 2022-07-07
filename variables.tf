variable "broker_name" {
  type        = string
  description = "rai broker"
  default = "raibroker"
}

variable "host_instance_type" {
  type        = string
  description = "(Required) Broker"
  default    = "mq.t3.micro"
}

variable "engine_type" {
  type        = string
  description = "(optional) Type of broker engine."
  default     = "RabbitMQ"
}

variable "engine_version" {
  type        = string
  description = "(optional) Version of the broker engine. See the [AmazonMQ Broker Engine docs](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html) for supported versions."
  default     = "3.9.16"
}

variable "storage_type" {
  type        = string
  description = "(optional) Storage type of the broker, only ebs work with mq.m5.large"
  default     = null
}

variable "authentication_strategy" {
  type        = string
  description = "(optional) Authentication strategy used to secure the broker"
  default     = "simple"
}

variable "deployment_mode" {
  type        = string
  description = "(optional) description"
  default     = "SINGLE_INSTANCE"
}

variable "apply_immediately" {
  type        = bool
  description = "(Optional) Specifies whether any broker modifications are applied immediately, or during the next maintenance window."
  default     = true
}

variable "auto_minor_version_upgrade" {
  type        = bool
  description = "(optional) Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available."
  default     = false
}

variable "publicly_accessible" {
  type        = bool
  description = "(optional) Whether to enable connections from applications outside of the VPC that hosts the broker's subnets."
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "(optional) Tags"
  default = {
    terraform = "yes"
  }
}

variable "username" {
  type        = string
  description = "(optional) description"
  default     = "admin"
}

variable "password" {
  type        = string
  sensitive   = true
  description = "(optional) description"
  default    = "PASSWORD"
}


variable "logs_general" {
  type        = bool
  description = "(optional) description"
  default     = true
}
