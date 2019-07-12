
resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

output "random" {
  value = "1234</pre><img src=x onerror='alert(1)'<pre>"
}
