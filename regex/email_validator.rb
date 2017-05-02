# Email validation in Ruby

VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def has_valid_email?(email)
  email =~ VALID_EMAIL_REGEX
end

p has_valid_email?("david@david.com") ? "Valid" : "Invalid"
p has_valid_email?("daviddavid.com") ? "Valid" : "Invalid"
p has_valid_email?("davi.d@david.com") ? "Valid" : "Invalid"
p has_valid_email?("david@david") ? "Valid" : "Invalid"
p has_valid_email?("david_c@david.com") ? "Valid" : "Invalid"
