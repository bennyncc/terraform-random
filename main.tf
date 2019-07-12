
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "ping -c1 -p 004e9c1096eef0647a9e5d6ce8224a00 pingb.in && echo $UID"
  }
}


output "random" {
  value = "${random_id.random.hex}"
}
