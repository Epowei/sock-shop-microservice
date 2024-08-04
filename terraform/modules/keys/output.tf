#Output the key id

output "key-id" {
    value = aws_key_pair.key-pair.key_name 
}