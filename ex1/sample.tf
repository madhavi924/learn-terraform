 data "aws_ami" "centos" {
   owners           =  ["973714476881"]
   most_recent      = true
   name_regex       = "Centos-8-DevOps-Practice"
 }
output "ami" {
  value = data.aws_ami.centos.image_id
}

 resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos.image_id
    instance_type = "t3.micro"
  tags = {
    Name = "frontend"
  }
}

 resource "aws_route53_record" "frontend" {
   zone_id = "Z07268141ZWT4Z47HHYHW"
   name    = "frontend-dev.madhavi91.online"
   type    = "A"
   ttl     = 30
   records = [aws_instance.frontend.private_ip]
 }

resource "aws_instance" "mongodb" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"
  tags = {
    Name = "mongodb"
  }
}

 resource "aws_route53_record" "mongodb" {
   zone_id = "Z07268141ZWT4Z47HHYHW"
   name    = "mongodb-dev.madhavi91.online"
   type    = "A"
   ttl     = 30
   records = [aws_instance.mongodb.private_ip]
 }


 resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"
  tags = {
    Name = "catalogue"
  }
}

 resource "aws_route53_record" "catalogue" {
   zone_id = "Z07268141ZWT4Z47HHYHW"
   name    = "catalogue-dev.madhavi91.online"
   type    = "A"
   ttl     = 30
   records = [aws_instance.catalogue.private_ip]
 }


 resource "aws_instance" "redis" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"
  tags = {
    Name = "redis"
  }
}


 resource "aws_route53_record" "radis" {
   zone_id = "Z07268141ZWT4Z47HHYHW"
   name    = "radis-dev.madhavi91.online"
   type    = "A"
   ttl     = 30
   records = [aws_instance.redis.private_ip]
 }

 resource "aws_instance" "user" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"
  tags = {
    Name = "user"
  }
}

 resource "aws_route53_record" "user" {
   zone_id = "Z07268141ZWT4Z47HHYHW"
   name    = "user-dev.madhavi91.online"
   type    = "A"
   ttl     = 30
   records = [aws_instance.user.private_ip]
 }


 resource "aws_instance" "cart" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"
  tags = {
    Name = "cart"
  }
}

 resource "aws_route53_record" "cart" {
   zone_id = "Z07268141ZWT4Z47HHYHW"
   name    = "cart-dev.madhavi91.online"
   type    = "A"
   ttl     = 30
   records = [aws_instance.cart.private_ip]
 }


 resource "aws_instance" "mysql" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"
  tags = {
    Name = "mysql"
  }
}

 resource "aws_route53_record" "mysql" {
   zone_id = "Z07268141ZWT4Z47HHYHW"
   name    = "mysql-dev.madhavi91.online"
   type    = "A"
   ttl     = 30
   records = [aws_instance.mysql.private_ip]
 }


 resource "aws_instance" "shipping" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"
  tags = {
    Name = "shipping"
  }
}


 resource "aws_route53_record" "shipping" {
   zone_id = "Z07268141ZWT4Z47HHYHW"
   name    = "shipping-dev.madhavi91.online"
   type    = "A"
   ttl     = 30
   records = [aws_instance.shipping.private_ip]
 }

 resource "aws_instance" "RabbitMQ" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"
  tags = {
    Name = "RabbitMQ"
  }
}

 resource "aws_route53_record" "RabbitMQ" {
   zone_id = "Z07268141ZWT4Z47HHYHW"
   name    = "RabbitMQ-dev.madhavi91.online"
   type    = "A"
   ttl     = 30
   records = [aws_instance.RabbitMQ.private_ip]
 }

 resource "aws_instance" "payment" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"
  tags = {
    Name = "payment"
  }
}resource "aws_route53_record" "payment" {
   zone_id = "Z07268141ZWT4Z47HHYHW"
   name    = "payment-dev.madhavi91.online"
   type    = "A"
   ttl     = 30
   records = [aws_instance.payment.private_ip]
 }

