variable "vm" {
    type = map(object({
      nic_name=string
      location=string
      resource_group_name=string
      size=string
      
    }))
  
}