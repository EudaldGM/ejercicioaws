module "vpc1"{
    source = "./network/vpc"
    vpc_cidr = "10.10.0.0/16"
}

module "subnet"{
    source = "./network/sn"
    sn_cidr = "10.10.10.0/24" #each.value
    publicsubnet = true
    vpc_id = module.vpc1.vpc_id
    route_table_id = module.igw.igw_route_table_id
    #for_each = local.envs
}

module "igw"{
    source = "./network/igw/"
    vpc_id = module.vpc1.vpc_id
    igw_name = "internet-gateway-1"
    #routetable
    route_cidr = "0.0.0.0/0"
}

module "sg" {
    source = "./network/sg"
    vpc_id = module.vpc1.vpc_id
    to_port = 443
    vpc_cidr = module.vpc1.vpc_cidr

}

#como hago un loop con las instancias relacionandolas con las subnets creadas, y como hago referencia a una id de una subnet creada con un loop?
module "instance"{
    source = "./instance/"
    instance_name = "web1" #each.key #concatenar each con string?
    sn_id = module.subnet.subnet_id
    sg_id = module.sg.sg_id
    #for_each = local.envs
}




#todo: añadir nginx a las ec2. Crear LB con los target group
#pregunta: si tengo una config aplicada y muevo las carpetas de sitio y hago terraform init, se crearan nuevos recursos? o el importante es el main.tf?