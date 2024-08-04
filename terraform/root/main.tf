module "vpc" {
    source                   = "../modules/vpc"
    cidr_block               = var.cidr_block  
    public-subnets           = var.public-subnets
    private-subnets          = var.private-subnets 
}




module "eks" {
    source                  = "../modules/eks"
    cluster                 = var.cluster
    eks-cluster-role        = module.iam.eks-cluster-role
    private-subnet-ids      = module.vpc.private-subnet-ids 
    node-group              = var.node-group
    node-role               = module.iam.node-role
    eks-sg                  = module.SG.eks-sg
    instance_type           = var.instance_type 
    key_name                = var.key_name
    cluster-policy          = module.iam.cluster-policy
    WorkerPolicy            = module.iam.WorkerPolicy
    CNIPolicy               = module.iam.CNIPolicy
    ContainerRegistry       = module.iam.ContainerRegistry  
    public-subnet-ids       = module.vpc.public-subnet-ids
    key-id                  = module.keys.key-id  
    addon_name              = var.addon_name 
    ebs-csi-role            = module.iam.ebs-csi-role  
}


module "SG" {
    source                  = "../modules/SG"
    vpc-id                  = module.vpc.vpc-id
    sg-name                 = var.sg-name 
}



module "iam" {
    source                  = "../modules/iam"
    cluster-rolename        = var.cluster-rolename 
    node-role-name          = var.node-role-name 
    role_name               = var.role_name
    openid-url              = module.eks.openid-url 
    openid-arn              = module.eks.openid-arn
    controller_role_name    = var.controller_role_name
    controller_policy_name  = var.controller_policy_name
}

module "keys" {
    source                  = "../modules/keys"
    key_filename            = var.key_filename
    key_name                = var.key_name
}

