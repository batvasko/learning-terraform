output "environment_url" {
    value = module.blog_alb.lb_dns_name
}

#output "instance_ami" {
#  value = aws_instance.blog.ami
#}

#output "instance_arn" {
#  value = aws_instance.blog.arn
#}

#output "selected_region" {
#  value = aws_region.current.name
#}
