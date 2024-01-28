module "rg3" {
  source = "../rg"
}

output "rgn1" {
  value = module.rg3.rgn
}


output "rgl1" {
  value = module.rg3.rgl
  sensitive = true
}

module "saname" {
  source = "../sa"
  n      = module.rg3.rgn
  l      = module.rg3.rgl
}

module "ca9" {
  source = "../ca"
  sa     = module.saname.san
}

output "san1" {
  value = module.saname.san
}