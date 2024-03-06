variable "base_name" {
  description = "Base name for the resource groups"
  #if i dont put up name here it will ask as input to give away a name when run. tf plan or apply.
  default="rg-main"
  type        = string
}

variable "rg_names" {
  description = "List of names for resource groups"
  type        = list(string)
  default     = ["rg-1", "rg-2"]  # Provide your list of names here
}
