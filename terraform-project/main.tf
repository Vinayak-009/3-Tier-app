module "network" {
  source = "./modules/network"
  project_id = var.project_id
  region     = var.region
}

module "instance" {
  source = "./modules/instance"
  project_id = var.project_id
  zone       = var.zone
  subnetwork = module.network.subnetwork
}

module "instance_group" {
  source = "./modules/instance_group"
  project_id      = var.project_id
  zone            = var.zone
  base_instance   = module.instance.instance_name
}

module "load_balancer" {
  source = "./modules/load_balancer"
  project_id    = var.project_id
  region        = var.region
  instance_group = module.instance_group.instance_group_name
}

module "sql" {
  source = "./modules/sql"
  project_id       = var.project_id
  region           = var.region
  private_network  = module.network.private_network
  authorized_networks = [{
    name = "pvt-ip"
    value = var.instance_private_ip
  }]
}
