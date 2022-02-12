output "instance_id" {
    description = "instacne id of ec2 instance"
    value = aws_instance.web_server.id

  
}

output "instance_public_ip" {
    description = "the public ip of ec2 instance"
    value = aws_instance.web_server.instance_public_ip
}

output "arn" {
    value = aws_instance.web_server.arn
  
}

output "instance_state" {
    description= "the state of the instace"
    value = aws_instance.web_server.instance_state
}

output "tags_all" {
    description = "the tags associated to the ec2 resource"
    value= aws_instance.web_server.tags_all
}

