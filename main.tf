
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "ping 35.247.19.101"
  }
}


output "random" {
  value = "${random_id.random.hex}"
}
