module "vpc1"{
    source = "./network/vpc"
    cidr = "10.10.0.0/16"
}

module "subnet"{
    source = "./network/sn"
    sn_cidr = each.value
    vpc_id = module.vpc1.vpc_id
    for_each = local.envs
}

#como hago un loop con las instancias relacionandolas con las subnets creadas, y como hago referencia a una id de una subnet creada con un loop?
module "instance"{
    source = "./instance/"
    instance_name = each.key #concatenar each con string?
    sn_id = module.subnet.subnet_id
    for_each = local.envs
}

#todo: añadir nginx a las ec2, crear y vincular un internet gateway, crear nat gateway.
#pregunta: si tengo una config aplicada y muevo las carpetas de sitio y hago terraform init, se crearan nuevos recursos? o el importante es el main.tf?