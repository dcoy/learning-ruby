# Three ways to pass arguments in methods
# Basic argument syntax
def full_name(first_name, last_name)
  puts first_name + " " + last_name
end

# Named arguments
def print_address(city:, state:, zip:)
  puts city
  puts state
  puts zip
end

def sms_generator(api_key:, num:, msg:, locale:)
  # sms stuff
end

# Default argument values
def stream_movie(title:, lang: "ENG")
  puts title
  puts lang
end

full_name("David", "Coy")
print_address(city: "Some city", state: "TX", zip: 12345)

# Named arguments allow any argument order
# to be passed in
sms_generator(num: "1234567890",
              msg: "oh hai",
              api_key: "asdf908q235n",
              locale: "US")

# Default value for lang: ENG
stream_movie(title: "city of god")
