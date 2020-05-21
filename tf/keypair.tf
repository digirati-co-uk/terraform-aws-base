# Keypair generation

data "template_file" "public_key" {
  template = file("files/key.pub")
}

resource "aws_key_pair" "auth" {
  key_name   = var.prefix
  public_key = data.template_file.public_key.rendered

  lifecycle {
    create_before_destroy = true
  }
}

