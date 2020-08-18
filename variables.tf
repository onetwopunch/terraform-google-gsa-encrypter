/**
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "org_id" {
  type        = string
  description = "Organization ID where the Cloud Function will have access to create Service Account keys."
  default     = ""
}

variable "folder_id" {
  type        = string
  description = "Folder ID where the Cloud Function will have access to create Service Account keys."
  default     = ""
}

variable "use_org_level_permissions" {
  type        = bool
  description = "Whether to use Org or Project level permissions. If true, expect org_id to be set, otherwise, expect folder_id to be set."
  default     = true
}

variable "project_id" {
  type        = string
  description = "Project Id for the Cloud Function"
}

variable "region" {
  type        = string
  description = "The region where the Cloud Function will run"
  default     = "us-west2"
}
variable "function_name" {
  type        = string
  description = "Name of the Cloud Function"
  default     = "gsa-encrypter"
}
variable "public_key_file" {
  type        = string
  description = "Path of the ascii armored gpg public key. Create by running `gpg --export --armor <key-id> > pubkey.asc`"
  default     = "pubkey.asc"
}

variable "cfn_members" {
  type        = list
  description = "List of IAM members (users, groups, etc) with the invoker permission on the CLoud Function"
  default     = []
}

variable "create_wrapper_script" {
  type        = bool
  description = "Whether to create the get-key wrapper script"
  default     = true
}