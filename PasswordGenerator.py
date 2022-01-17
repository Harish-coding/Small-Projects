import string
import random

# List of all the charcters allowed for passwords
lower_case = string.ascii_lowercase
upper_case = string.ascii_uppercase
numbers = string.digits
symbols = string.punctuation

# The number of characters for each category
num_lower_case = len(lower_case)
num_upper_case = len(upper_case)
num_numbers = len(numbers)
num_symbols = len(symbols)

all_characters = []
all_characters.extend(list(lower_case))
all_characters.extend(list(upper_case))
all_characters.extend(list(numbers))
all_characters.extend(list(symbols))
total_characters = len(all_characters)

# Pick randomly from the pool of possible characters
# Each character is pipcked only once
def password_gen1(pass_length):

    print("Your Password is : ")
    print("".join(random.sample(all_characters, pass_length)))
    
# Pick randomly from the pool of possible characters
# Characters might be repreated
# Use when requested len is larger than the set of possible characters
def password_gen2(pass_length):
    count = 0
    password = ""
    while count < pass_length:
        password = password + all_characters[random.randint(1, total_characters) - 1]
        count += 1
        
    print("Your Password is : " + password)


if __name__ == "__main__":
    
    # Get user input
    pass_length = int(input("How many characters would you like for your password? \n"))   
    
    # Check whether the length of requested password is larger than
    # size of set of possible characters
    if pass_length < total_characters:
        password_gen1(pass_length)
    else:
        password_gen2(pass_length)



       
