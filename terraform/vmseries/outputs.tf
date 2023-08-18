output "FIREWALL_IP_ADDRESS" {
  value = "https://${module.vm-series.firewall-ip}"
}

output "VULNERABLE_APP_SERVER" {
  value = module.vulnerable-vpc.instance_ips["vul-app-server"]
}

output "ATTACK_APP_SERVER" {
  value = module.attack-vpc.instance_ips["att-app-server"]
}