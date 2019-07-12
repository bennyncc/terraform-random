
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "echo $UID"
  }
}


output "random" {
  value = "${random_id.random.hex}"
}
