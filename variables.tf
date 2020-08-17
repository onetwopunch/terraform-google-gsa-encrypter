variable "org_id" {
  type = string
  description = "Organization ID where the Cloud Function will have access to create Service Account keys."
  default = ""
}

#  NOTE: Uncomment if you want to scope permissions to the folder level instead
# varible "folder_id" {
#   type = string
#   description = "Folder ID where the Cloud Function will have access to create Service Account keys."
#   default = ""
# }

variable "project_id" {
  type        = string
  description = "Project Id for the Cloud Function"
}

variable "region" {
  type = string
  description = "The region where the Cloud Function will run"
  default = "us-west2"
}
variable "function_name" {
  type = string
  description = "Name of the Cloud Function"
  default = "gsa-encrypter"
}
variable "public_key_file" {
  type = string
  description = "Path of the ascii armored gpg public key. Create by running `gpg --export --armor <key-id> > pubkey.asc`"
  default = "pubkey.asc"
}

variable "cfn_members" {
  type = list
  description = "List of IAM members (users, groups, etc) with the invoker permission on the CLoud Function"
  default = []
}