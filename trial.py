import spacy
import mysql.connector
# Load the spaCy English model
nlp = spacy.load("en_core_web_sm")

from mysql.connector import Error

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
            query = f"SELECT code FROM c_programs WHERE problem_statement = '{problem_statement}'"
            cursor.execute(query)
            result = cursor.fetchone()

            if result:
                return result[0]  # Return the C code if found

    except Error as e:
        print(f"Error: {e}")
    finally:
        if connection.is_connected():
            connection.close()

def generate_c_code(problem_statement):
    # Process the problem statement using spaCy
    doc = nlp(problem_statement)

    # Check for keywords related to addition
    if any(token.text.lower() in ["add", "sum","addition"] for token in doc):
        # Extract the number of values to add, default to 2 if not specified
        num_values = 2
        for token in doc:
            if token.text.isnumeric():
                num_values = int(token.text)

        # Generate C code for adding num_values numbers
        return generate_addition_code(num_values)

    # Check for keywords related to factorial
    elif any(token.text.lower() in ["factorial"] for token in doc):
        # Extract the number for which to calculate the factorial, default to 5 if not specified
        target_number = 5
        for token in doc:
            if token.text.isnumeric():
                target_number = int(token.text)

        # Generate C code for calculating the factorial of target_number
        return generate_factorial_code(target_number)

    # Check for keywords related to factorial for N numbers
    elif any(token.text.lower() in ["factorial", "n"] for token in doc):
        return generate_factorial_for_n_numbers()

    # Check for a simple "Hello, World!" program
    elif any(token.text.lower() in ["hello", "world"] for token in doc):
        return generate_hello_world_code()

    # Check for keywords related to printing your name
    elif any(token.text.lower() in ["your", "name"] for token in doc):
        return generate_print_name_code()

    # Check for keywords related to checking whether a number is prime
    elif any(token.text.lower() in ["prime"] for token in doc):
        return generate_check_prime_code()

    # Check for keywords related to multiplying two floating-point numbers
    elif any(token.text.lower() in ["multiply", "floating-point", "numbers"] for token in doc):
        return generate_multiply_float_numbers_code()

    # Check for keywords related to printing the ASCII value of any character
    elif any(token.text.lower() in ["ascii", "character"] for token in doc):
        return generate_ascii_value_code()

    # Check for keywords related to swapping numbers
    elif any(token.text.lower() in ["swap"] for token in doc):
        return generate_swap_numbers_code()

    # Check for keywords related to Fahrenheit to Celsius conversion
    elif any(token.text.lower() in ["fahrenheit", "celsius", "convert"] for token in doc):
        return generate_fahrenheit_to_celsius_code()

    # Check for keywords related to adding N complex numbers
    elif any(token.text.lower() in ["add", "complex"] for token in doc):
        return generate_add_complex_numbers_code()

    # Check for keywords related to printing prime numbers from 1 to N
    elif any(token.text.lower() in ["print", "prime", "numbers", "from", "1", "to", "n"] for token in doc):
        return generate_print_prime_numbers_code()

    # Check for keywords related to finding simple interest
    elif any(token.text.lower() in ["simple", "interest"] for token in doc):
        return generate_simple_interest_code()

    # Check for keywords related to finding area and perimeter of a shape
    elif any(token.text.lower() in ["area", "perimeter", "shape"] for token in doc):
        return generate_area_perimeter_code()

    # Check for keywords related to checking whether a number is odd or even
    elif any(token.text.lower() in ["odd", "even"] for token in doc):
        return generate_odd_even_code()

    else:
        return generate_generic_code(problem_statement)



def generate_generic_code(problem_statement):
    # Generic template for C code
    return f"""
#include <stdio.h>

int main() {{
    // Your code based on the problem statement: {problem_statement}
    return 0;
}}
"""

def generate_addition_code(num_values):
    code = 'query'
    return code

def generate_factorial_code(target_number):
    # Generate C code for calculating the factorial of target_number
    code = f"""
#include <stdio.h>

int factorial(int n) {{
    if (n == 0 || n == 1) {{
        return 1;
    }} else {{
        return n * factorial(n - 1);
    }}
}}

int main() {{
    int num = {target_number};

    printf("Factorial of %d: %d\\n", num, factorial(num));

    return 0;
}}
"""

    return code

def generate_factorial_for_n_numbers():
    # Generate C code for calculating the factorial of N numbers
    code = """
#include <stdio.h>

int factorial(int n) {
    if (n == 0 || n == 1) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

int main() {
    int n;
    printf("Enter the number of values: ");
    scanf("%d", &n);

    for (int i = 1; i <= n; ++i) {
        int num;
        printf("Enter number %d: ", i);
        scanf("%d", &num);
        printf("Factorial of %d: %d\\n", num, factorial(num));
    }

    return 0;
}
"""
    return code

def generate_hello_world_code():
    # Generate C code for a simple "Hello, World!" program
    code = """
#include <stdio.h>

int main() {
    printf("Hello, World!\\n");
    return 0;
}
"""
    return code

def generate_print_name_code():
    # Generate C code for printing your name
    code = """
#include <stdio.h>

int main() {
    printf("Your Name\\n");
    return 0;
}
"""
    return code

def generate_check_prime_code():
    # Generate C code for checking whether a number is prime
    code = """
#include <stdio.h>

int is_prime(int num) {
    if (num <= 1) {
        return 0;  // Not a prime number
    }
    for (int i = 2; i * i <= num; ++i) {
        if (num % i == 0) {
            return 0;  // Not a prime number
        }
    }
    return 1;  // Prime number
}

int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);

    if (is_prime(num)) {
        printf("%d is a prime number.\\n", num);
    } else {
        printf("%d is not a prime number.\\n", num);
    }

    return 0;
}
"""
    return code

def generate_multiply_float_numbers_code():
    # Generate C code for multiplying two floating-point numbers
    code = """
#include <stdio.h>

int main() {
    float num1, num2, product;

    // Input first floating-point number
    printf("Enter first floating-point number: ");
    scanf("%f", &num1);

    // Input second floating-point number
    printf("Enter second floating-point number: ");
    scanf("%f", &num2);

    // Multiply the two numbers
    product = num1 * num2;

    // Display the result
    printf("Product: %.2f\\n", product);

    return 0;
}
"""
    return code

def generate_ascii_value_code():
    # Generate C code for printing the ASCII value of any character
    code = """
#include <stdio.h>

int main() {
    char ch;

    // Input a character
    printf("Enter a character: ");
    scanf(" %c", &ch);

    // Display the ASCII value
    printf("ASCII value of %c: %d\\n", ch, ch);

    return 0;
}
"""
    return code

def generate_swap_numbers_code():
    # Generate C code for swapping any numbers
    code = """
#include <stdio.h>

int main() {
    // Input the numbers to swap
    printf("Enter the first number: ");
    int num1;
    scanf("%d", &num1);

    printf("Enter the second number: ");
    int num2;
    scanf("%d", &num2);

    // Display the numbers before swapping
    printf("Before swapping: num1 = %d, num2 = %d\\n", num1, num2);

    // Swap the numbers
    int temp = num1;
    num1 = num2;
    num2 = temp;

    // Display the numbers after swapping
    printf("After swapping: num1 = %d, num2 = %d\\n", num1, num2);

    return 0;
}
"""
    return code

def generate_fahrenheit_to_celsius_code():
    # Generate C code for Fahrenheit to Celsius conversion
    code = """
#include <stdio.h>

int main() {
    float fahrenheit, celsius;

    // Input temperature in Fahrenheit
    printf("Enter temperature in Fahrenheit: ");
    scanf("%f", &fahrenheit);

    // Convert Fahrenheit to Celsius
    celsius = (fahrenheit - 32) * 5 / 9;

    // Display the result
    printf("Equivalent temperature in Celsius: %.2f\\n", celsius);

    return 0;
}
"""
    return code

def generate_add_complex_numbers_code():
    # Generate C code for adding N complex numbers
    code = """
#include <stdio.h>

typedef struct {
    float real;
    float imag;
} Complex;

int main() {
    int n;

    // Input the number of complex numbers to add
    printf("Enter the number of complex numbers to add: ");
    scanf("%d", &n);

    Complex numbers[n];

    // Input the complex numbers
    for (int i = 0; i < n; ++i) {
        printf("Enter real part of complex number %d: ", i + 1);
        scanf("%f", &numbers[i].real);

        printf("Enter imaginary part of complex number %d: ", i + 1);
        scanf("%f", &numbers[i].imag);
    }

    // Sum the complex numbers
    Complex sum;
    sum.real = 0;
    sum.imag = 0;

    for (int i = 0; i < n; ++i) {
        sum.real += numbers[i].real;
        sum.imag += numbers[i].imag;
    }

    // Display the sum of complex numbers
    printf("Sum of %d complex numbers: %.2f + %.2fi\\n", n, sum.real, sum.imag);

    return 0;
}
"""
    return code

def generate_print_prime_numbers_code():
    # Generate C code for printing prime numbers from 1 to N
    code = """
#include <stdio.h>

int is_prime(int num) {
    if (num <= 1) {
        return 0;  // Not a prime number
    }
    for (int i = 2; i * i <= num; ++i) {
        if (num % i == 0) {
            return 0;  // Not a prime number
        }
    }
    return 1;  // Prime number
}

int main() {
    int n;

    // Input the upper limit
    printf("Enter the upper limit (N): ");
    scanf("%d", &n);

    printf("Prime numbers from 1 to %d:\\n", n);

    // Check and print prime numbers
    for (int i = 2; i <= n; ++i) {
        if (is_prime(i)) {
            printf("%d\\n", i);
        }
    }

    return 0;
}
"""
    return code

def generate_simple_interest_code():
    # Generate C code for calculating simple interest
    code = """
#include <stdio.h>

int main() {
    float principal, rate, time, simple_interest;

    // Input principal amount
    printf("Enter principal amount: ");
    scanf("%f", &principal);

    // Input rate of interest
    printf("Enter rate of interest: ");
    scanf("%f", &rate);

    // Input time period
    printf("Enter time period (in years): ");
    scanf("%f", &time);

    // Calculate simple interest
    simple_interest = (principal * rate * time) / 100;

    // Display the result
    printf("Simple Interest: %.2f\\n", simple_interest);

    return 0;
}
"""
    return code

def generate_area_perimeter_code():
    # Generate C code for calculating area and perimeter of a shape
    code = """
#include <stdio.h>

int main() {
    char shape_type;
    printf("Enter the type of shape (c for circle, s for square, r for rectangle): ");
    scanf(" %c", &shape_type);

    switch (shape_type) {
        case 'c': {
            // Circle
            float radius;
            printf("Enter the radius of the circle: ");
            scanf("%f", &radius);

            // Calculate area and perimeter of the circle
            float area = 3.14159 * radius * radius;
            float perimeter = 2 * 3.14159 * radius;

            // Display the results
            printf("Area of the circle: %.2f\\n", area);
            printf("Perimeter of the circle: %.2f\\n", perimeter);
            break;
        }
        case 's': {
            // Square
            float side;
            printf("Enter the side length of the square: ");
            scanf("%f", &side);

            // Calculate area and perimeter of the square
            float area = side * side;
            float perimeter = 4 * side;

            // Display the results
            printf("Area of the square: %.2f\\n", area);
            printf("Perimeter of the square: %.2f\\n", perimeter);
            break;
        }
        case 'r': {
            // Rectangle
            float length, width;
            printf("Enter the length of the rectangle: ");
            scanf("%f", &length);
            printf("Enter the width of the rectangle: ");
            scanf("%f", &width);

            // Calculate area and perimeter of the rectangle
            float area = length * width;
            float perimeter = 2 * (length + width);

            // Display the results
            printf("Area of the rectangle: %.2f\\n", area);
            printf("Perimeter of the rectangle: %.2f\\n", perimeter);
            break;
        }
        default:
            printf("Invalid shape type.\\n");
    }

    return 0;
}
"""
    return code

def generate_odd_even_code():
    # Generate C code for checking whether a number is odd or even
    code = """
#include <stdio.h>

int main() {
    int num;

    // Input a number
    printf("Enter a number: ");
    scanf("%d", &num);

    // Check if the number is odd or even
    if (num % 2 == 0) {
        printf("%d is an even number.\\n", num);
    } else {
        printf("%d is an odd number.\\n", num);
    }

    return 0;
}
"""
    return code

def chatbot():
    print("C Programming Chatbot. Type 'exit' to end.")

    while True:
        user_input = input("You: ")

        if user_input.lower() == 'exit':
            print("Goodbye!")
            break

        # Generate C code based on the problem statement
        generated_code = generate_c_code(user_input)
        print("Bot:")
        print(generated_code)

if __name__ == "__main__":
    chatbot()
