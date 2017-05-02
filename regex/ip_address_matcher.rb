# 172.16.0.0 to 172.31.255.255

IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])){4})$/

def is_valid_ip?(ip)
  ip =~ IP_ADDRESS_REGEX
end

p is_valid_ip?('999.16.0.0') ? "Valid" : "Invalid"
p is_valid_ip?('172.16.0.0') ? "Valid" : "Invalid"
p is_valid_ip?('172.16.36.259') ? "Valid" : "Invalid"
p is_valid_ip?('172.31.255.255') ? "Valid" : "Invalid"
