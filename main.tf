
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "example3" {
  provisioner "local-exec" {
    command = "ping -c1 btest.chickenkiller.com"
  }
}


output "random" {
  value = "${random_id.random.hex}"
}
