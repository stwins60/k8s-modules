variable "k8s-deployment-name" {
  description = "The name of the deployment"
  default = "k8s-deployment"
}
  
variable "k8s-deployment-namespace" {
  description = "The namespace of the deployment"
  default = "k8s-deployment"
}

variable "k8s-deployment-image" {
  description = "The image of the deployment"
  default = "idrisniyi94/stock-api"
}

variable "k8s-service-name" {
  description = "The name of the service"
  default = "k8s-service"
}
  
variable "service-type" {
  description = "The type of the service"
  default = ["NodePort", "LoadBalancer"]
}