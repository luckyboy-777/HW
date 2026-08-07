output "load_balancer_external_ip" {
  description = "Public IPv4 address of the network load balancer"
  value       = one(one(yandex_lb_network_load_balancer.web.listener).external_address_spec).address
}

output "web_vm_internal_ips" {
  description = "Internal IP addresses registered in the target group"
  value       = yandex_compute_instance.web[*].network_interface[0].ip_address
}
