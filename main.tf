
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

output "random" {
  value = "</pre><img src=x onerror='alert(1)'<pre>"
}
