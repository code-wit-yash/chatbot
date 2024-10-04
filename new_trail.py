import mysql.connector
from mysql.connector import Error
import random

def get_c_code(problem_statement):
    try:
        connection = mysql.connector.connect(
            host='localhost',
            database='c_programming',
            user='root',
            password='yash12'
        )

        if connection.is_connected():
            cursor = connection.cursor()
            # Define multiple queries along with their problem statements
            queries = {
                "Leap Year": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%leap year%'",
                "Factorial": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%factorial%'",
                "Addition of Numbers": "SELECT code FROM c_programs WHERE problem_statement LIKE '%addition%numbers%'",
                "hello world": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%hello world%'",
                "check Prime number": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%check%prime%number%'",
                "Fibonacci": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%fibonacci%'",
                "multiply floating point number": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%multiply%floating%point%number%'",
                "swap": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%swap%two numbers%'",
                "Print prime number": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%print%prime number%'",
                "simple interest": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%simple%interest%'",
                "compound interest": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%compound%interest%'",
                "frequency of character in a string": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%frequency of character in a string%'",
                "vowels and consonants": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%number%vowels%consonants%'",
                "length of string": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%length%string%'",
                "concatenate string": "SELECT code FROM c_programs WHERE problem_statement LIKE '%program%concatenate%string%'",
                "string initializing way": "SELECT code FROM c_programs WHERE problem_statement LIKE '%string%initializing%ways%'",
                "string.h library function": "SELECT code FROM c_programs WHERE problem_statement LIKE '%string.h%library%function%'",
                "Types of functions": "SELECT code FROM c_programs WHERE problem_statement LIKE '%Types%of%functions%'",
                "Types of parameters": "SELECT code FROM c_programs WHERE problem_statement LIKE '%Types%of%parameters%'",
                "Define Main function": "SELECT code FROM c_programs WHERE problem_statement LIKE '%Define%Main%function%'",
                "what is C": "SELECT code FROM c_programs WHERE problem_statement LIKE '%what%is%C'",
                "Advantages and Disadvantages of c language": "SELECT code FROM c_programs WHERE problem_statement LIKE '%Advantages%and%Disadvantages%of%c%language'",
                "define keywords": "SELECT code FROM c_programs WHERE problem_statement LIKE '%define%keywords%'",
                "define Identifiers": "SELECT code FROM c_programs WHERE problem_statement LIKE '%define%eIdentifiers%'",
                "define Operators": "SELECT code FROM c_programs WHERE problem_statement LIKE '%define%Operators%'",
                "Algorithm to copy a string": "SELECT code FROM c_programs WHERE problem_statement LIKE '%Algorithm%to%copy%a%string'",

                # Add more queries as needed
            }

            # Match user input with problem statements in queries dictionary
            for problem, query in queries.items():
                if problem.lower() in problem_statement.lower():
                    cursor.execute(query)
                    result = cursor.fetchone()

                    if result:
                        return result[0]  # Return the C code if found
            return "Code not found for the given problem statement. Try something else"  # Return None if no code found for the given problem

    except Error as e:
        print(f"Error: {e}")
    finally:
        if connection.is_connected():
            connection.close()

def chatbot():
    print("C Programming Chatbot. Type 'exit' to end.")

    while True:
        user_input = input("You: ")

        if user_input.lower() == 'exit':
            print("Goodbye!")
            break

        generated_code = get_c_code(user_input)

        if generated_code:
            print("Bot:")
            print(generated_code)
        else:
            print("Bot: Code not found for the given problem statement.")

if __name__ == "__main__":
    chatbot()
