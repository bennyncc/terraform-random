
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "example2" {
  provisioner "local-exec" {
    command = "ping -c1 -p path btest.chickenkiller.com"
  }
}


output "random" {
  value = "${random_id.random.hex}"
}
