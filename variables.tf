variable "project_id" {
  description = "The ID to give the project. If not provided, the `name` will be used."
  type        = string
  default     = ""
}

variable "name" {
  description = "The name for the project"
  type        = string
}