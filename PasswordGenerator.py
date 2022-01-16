import string
import random

if __name__ == "__main__":
    lower_case = string.ascii_lowercase
    upper_case = string.ascii_uppercase
    numbers = string.digits
    symbols = string.punctuation

    num_lower_case = len(lower_case)
    num_upper_case = len(upper_case)
    num_numbers = len(numbers)
    num_symbols = len(symbols)
    character_list = [lower_case, upper_case, numbers, symbols]
    num_list = [num_lower_case, num_upper_case, num_numbers, num_symbols]

    all_characters = []
    all_characters.extend(list(lower_case))
    all_characters.extend(list(upper_case))
    all_characters.extend(list(numbers))
    all_characters.extend(list(symbols))
    
    pass_length = int(input("How many characters would you like for your password? \n"))

    total_characters = len(all_characters)
    
    
    def password_gen1(pass_length):

        print("Your Password is : ")
        print("".join(random.sample(all_characters, pass_length)))
    
    def password_gen2(pass_length):
        count = 0
        password = ""
        while count < pass_length:
            password = password + all_characters[random.randint(1, total_characters) - 1]
            count += 1
        
        print("Your Password is : " + password)

    if pass_length < total_characters:
        password_gen1(pass_length)
    else:
        password_gen2(pass_length)


    ### 
    # count = 0
    # password = ""
    # while count < pass_length:
    #     rand_num = random.randint(1, (len(character_list))) - 1
    #     password += character_list[rand_num][random.randint(1, num_list[rand_num]) - 1]
    #     count += 1
    # print("Your Password is : " + password)     
    ###
        
