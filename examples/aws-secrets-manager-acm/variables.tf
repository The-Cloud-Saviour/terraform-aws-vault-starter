variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources into"
}

variable "kms_key_id" {
  type        = string
  description = "Specifies the ARN or ID of the AWS KMS customer master key (CMK) to be used to encrypt the secret values in the versions stored in this secret. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default CMK (the one named aws/secretsmanager"
  default     = null
}

variable "recovery_window" {
  type        = number
  description = "Specifies the number of days that AWS Secrets Manager waits before it can delete the secret"
  default     = 0
}

variable "resource_name_prefix" {
  type        = string
  description = "Prefix for resource names (e.g. \"prod\")"
}

variable "tags" {
  type        = map(string)
  description = "Tags for secrets manager secret"
  default = {
    Vault = "tls-data"
  }
}
