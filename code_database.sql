create database c_programming;
use c_programming;

CREATE TABLE c_programs (id INT AUTO_INCREMENT PRIMARY KEY,problem_statement TEXT, code TEXT);

INSERT INTO c_programs (problem_statement, code)VALUES
    ('Addition of Numbers', 
    '#include <stdio.h>
    int main() {
    int n;
    // Input the number of values
    printf("Enter the number of values (N) for addition: ");
    scanf("%d", &n);
    // Perform addition
    int sum = 0;
    for (int i = 1; i <= n; ++i) {
        int num;
        printf("Enter number %d: ", i);
        scanf("%d", &num);
        sum += num;
    }
    // Display the result
    printf("Sum of %d numbers: %d\n", n, sum);
    return 0;
}');
INSERT INTO c_programs (problem_statement, code)VALUES
( 'C Program to Print Hello World',
'int main()
{
    // prints hello world
    printf("Hello World");
    return 0;
}');
INSERT INTO c_programs (problem_statement, code)VALUES
('C Program To Print Your Own Name',
'int main() 
{ 
    // print name 
    printf("Name : GeeksforGeeks"); 
    return 0; 
}');
INSERT INTO c_programs (problem_statement, code)VALUES
('C Program to Check Prime Number',
'#include <stdio.h> 
  
// Function to check prime number 
void checkPrime(int N) 
{ 
    // initially, flag is set to true or 1 
    int flag = 1; 
  
    // loop to iterate through 2 to N/2 
    for (int i = 2; i <= N / 2; i++) { 
  
        // if N is perfectly divisible by i 
        // flag is set to 0 i.e false 
        if (N % i == 0) { 
            flag = 0; 
            break; 
        } 
    } 
  
    if (flag) { 
        printf("The number %d is a Prime Number\n", N); 
    } 
    else { 
        printf("The number %d is not a Prime Number\n", N); 
    } 
  
    return; 
} 
  
// driver code 
int main() 
{ 
    int N = 546; 
  
    checkPrime(N); 
  
    return 0;');
INSERT INTO c_programs (problem_statement, code)VALUES
('C Program To Multiply Two Floating-Point Numbers',
'#include <stdio.h> 
  
// Function to multiply floating point 
// numbers 
float multiply(float a, float b)  
{  
  return a * b;  
} 
  
// Driver code 
int main() 
{ 
    float A = 2.12, B = 3.88, product; 
  
    // Calling product function 
    product = multiply(A, B); 
  
    // Displaying result up to 3 decimal places. 
    printf("Product of entered numbers is:%.3f", product); 
  
    return 0; 
}');
INSERT INTO c_programs (problem_statement, code)VALUES
('Printing Integer values in C',
'#include <stdio.h>
 
// Driver code
int main()
{
    // Declaring integer
    int x = 5;
 
    // Printing values
    printf("Printing Integer value %d", x);
    return 0;
}');
INSERT INTO c_programs (problem_statement, code)VALUES
('C Program To Print ASCII Value of a Character',
'#include <stdio.h>
 
// Driver code
int main()
{
    char c = "k";
 
    // %d displays the integer value of
    // a character
    // %c displays the actual character
    printf("The ASCII value of %c is %d", c, c);
    return 0;
}');
INSERT INTO c_programs (problem_statement, code)VALUES
('C Program to Swap two Numbers',
'#include <stdio.h>
 
// Driver code
int main()
{
    int x, y;
    printf("Enter Value of x ");
    scanf("%d", &x);
    printf("\nEnter Value of y ");
    scanf("%d", &y);
 
    // Using a temporary variable to swap the values
    // Store the value of x in a temporary variable
    int temp = x;
    // Assign the value of y to x
    x = y;
    // Assign the value stored in the temporary variable to
    // y
    y = temp;
 
    printf("\nAfter Swapping: x = %d, y = %d", x, y);
    return 0;
}');
INSERT INTO c_programs (problem_statement, code)VALUES
('Program to Convert Fahrenheit to Celcius in C',
'#include <stdio.h> 
  
// Function to convert Degree 
// Fahrenheit to Degree Celsius 
float fahrenheit_to_celsius(float f) 
{ 
    return ((f - 32.0) * 5.0 / 9.0); 
} 
  
// Driver code 
int main() 
{ 
    float f = 40; 
  
    // Passing parameter to function 
    printf("Temperature in Degree Celsius : %0.2f", 
           fahrenheit_to_celsius(f)); 
    return 0; 
}');
INSERT INTO c_programs (problem_statement, code)VALUES
('C Program to Find the Size of int, float, double and char',
'#include <stdio.h>
 
int main()
{
    int integerType;
    char charType;
    float floatType;
    double doubleType;
 
    // Calculate and Print
    // the size of integer type
    printf("Size of int is: %ld", sizeof(integerType));
 
    // Calculate and Print
    // the size of charType
    printf("\nSize of char is: %ld", sizeof(charType));
 
    // Calculate and Print
    // the size of floatType
    printf("\nSize of float is: %ld", sizeof(floatType));
 
    // Calculate and Print
    // the size of doubleType
    printf("\nSize of double is: %ld", sizeof(doubleType));
 
    return 0;
}');
INSERT INTO c_programs (problem_statement, code)VALUES
('C Program to Add Two Complex Numbers',
'// C program to demonstrate
// addition of complex numbers
#include <stdio.h>

// define a structure for complex number
typedef struct complexNumber {
	int real;
	int img;
} complex;

// This function accepts two complex numbers
// as parameter and return addition of
// them.
complex add(complex x, complex y);

// Driver code
int main()
{
	// Define three complex type numbers
	complex a, b, sum;

	// First complex number
	a.real = 2;
	a.img = 3;

	// Second complex number
	b.real = 4;
	b.img = 5;

	// Print first complex number
	printf("\n a = %d + %di", a.real, a.img);

	// print second complex number
	printf("\n b = %d + %di", b.real, b.img);

	// call add(a,b) function and
	// pass complex numbers a & b
	// as an parameter.
	sum = add(a, b);

	// Print result
	printf("\n sum = %d + %di", sum.real, sum.img);

	return 0;
}

// Complex add(complex x, complex y)
// function definition
complex add(complex x, complex y)
{
	// Define a new complex number.
	complex add;

	// Add real part of a&b
	add.real = x.real + y.real;

	// Add Imaginary part of a&b
	add.img = x.img + y.img;

	return (add);
}');
INSERT INTO c_programs (problem_statement, code)VALUES
('C Program to Print Prime Numbers From 1 to N',
'#include <stdbool.h>
#include <stdio.h>
 
// This function is to check
// if a given number is prime
bool isPrime(int n)
{
    // since 0 and 1 is not prime
    // number return false.
    if (n == 1 || n == 0)
        return false;
 
    // Run a loop from 2 to n/2
    for (int i = 2; i <= n / 2; i++) {
 
        // if the number is divisible by i, then n is not a
        // prime number, otherwise n is prime number.
        if (n % i == 0)
            return false;
    }
    return true;
}
 
// Driver code
int main()
{
    int N = 50;
 
    // check for the every number from 1 to N
    for (int i = 1; i <= N; i++) {
 
        // check if i (current number) is prime
        if (isPrime(i)) {
            printf("%d ", i);
        }
    }
    return 0;
}');
INSERT INTO c_programs (problem_statement, code)VALUES
('C Program To Find Simple Interest',
'#include <stdio.h> 
  
// Driver code 
int main() 
{ 
    // We can change values here for 
    // different inputs 
    float P = 1, R = 1, T = 1; 
  
    // Calculate simple interest 
    float SI = (P * T * R) / 100; 
  
    // Print Simple Interest 
    printf("Simple Interest = %f\n", SI); 
  
    return 0; 
} ');
INSERT INTO c_programs (problem_statement, code)VALUES
('C Program For Compound Interest',
'#include <stdio.h> 
  
// For using pow function we must  
// include math.h 
#include<math.h>  
  
// Driver code 
int main()  
{ 
  // Principal amount 
  double principal = 10000;  
  
  // Annual rate of interest 
  double rate = 5;  
  
  // Time 
  double time = 2;  
  
  // Calculating compound Interest 
  double Amount = principal *  
                  ((pow((1 + rate / 100),  
                    time))); 
  double CI = Amount - principal; 
   
  printf("Compound Interest is : %lf",CI); 
  return 0; 
} ');
INSERT INTO c_programs (problem_statement, code)VALUES
('C Program To Find Area And Perimeter of Rectangle',
'int main()
{
 
    int l = 10, b = 10;
    printf("Area of rectangle is : %d", l * b);
    printf("\nPerimeter of rectangle is : %d", 2 * (l + b));
    return 0;
}');
INSERT INTO c_programs (problem_statement, code)VALUES
('C program to find frequency of character in a string',
'// C program to find the frequency
 // of characters in a string
 #include <stdio.h>
 #include <string.h>
 // Function to print the frequencies
 // of each character of the string
 void printFrequency(int freq[])
 {
 	for (int i = 0; i < 26; i++)
 	{
 		// If frequency of the
 		// alphabet is non-zero
 		if (freq[i] != 0)
 		{
 			// Print the character and
 			// its respective frequency
 			printf("%c - %d\n",
 				i + ''a'', freq[i]);
 		}
 	}
 }
 // Function to calculate the frequencies
 // of each character of the string
 void findFrequncy(char S[])
 {
 	int i = 0;
 	// Stores the frequencies
 	// of each character
 	int freq[26] = { 0 };
 	// Traverse over the string
 	while (S[i] != ''\0'') {
 		// Increment the count of
 		// each character by 1
 		freq[S[i] - ''a'']++;
 		// Increment the index
 		i++;
 	}
 	// Function call to print
 	// the frequencies
 	printFrequency(freq);
 }
 // Driver Code
 int main()
 {
 	char S[100] = "CProgramming";
 	findFrequncy(S);
 }
');
INSERT INTO c_programs (problem_statement, code)VALUES
('C program to find number of vowels and consonants',
'// C program to count the number of
 // vowels and consonants in a string
 #include <stdio.h>
 // Function to count number
 // of vowels and consonant
 void count_vowels_and_consonant(char* str)
 {
 	// Declare the variable vowels and consonant
 	int vowels = 0, consonants = 0;
 	int i;
 	char ch;
 	// Take each character from this string to check
 	for (i = 0; str[i] != ''\0''; i++) {
 		ch = str[i];
 		// If this character is a vowel,
 		// increment the count of vowels
 		if (ch == ''a'' || ch == ''e''
 			|| ch == ''i'' || ch == ''o''
 			|| ch == ''u'' || ch == ''A''
 			|| ch == ''E'' || ch == ''I''
 			|| ch == ''O'' || ch == ''U'')
 			vowels++;
 		// If this character is a space
 		// skip it
 		else if (ch == ' ')
 			continue;
 		else
 			// Else increment the count of consonants
 			consonants++;
 	}
 	// Print the total count of vowels and consonants
 	printf("\nVowels: %d", vowels);
 	printf("\nConsonants: %d", consonants);
 }
 // Driver function.
 int main()
 {
 	char* str = "C Language Chatbot";
 	printf("String: %s", str);
 	count_vowels_and_consonant(str);
 	return 0;
 }
');
INSERT INTO c_programs (problem_statement, code)VALUES
('C program to reverse a string using recursion',
'// C program to reverse a string
 // using recursion
 # include <stdio.h>
 // Function to print reverse of
 // the passed string
 void reverse(char *str)
 {
 if (*str)
 {
 	reverse(str + 1);
 	printf("%c", *str);
 }
 }
 // Driver code
 int main()
 {
 char a[] = "Geeks for Geeks";
 reverse(a);
 return 0;
 }
');
INSERT INTO c_programs (problem_statement, code)VALUES
('C program to find length of string',
'// C program to find the length of string
 #include <stdio.h>
 #include <string.h>
 int main()
 {
 	char Str[1000];
 	int i;
 	printf("Enter the String: ");
 	scanf("%s", Str);
 	for (i = 0; Str[i] != ''\0''; ++i);
 	printf("Length of Str is %d", i);
 	return 0;
 }
');
INSERT INTO c_programs (problem_statement, code)VALUES
('C program to concatenate a string',
'// C Program to concatenate two
 // strings without using strcat
 #include <stdio.h>
 int main()
 {
 	// Get the two Strings to be concatenated
 	char str1[100] = "Geeks", str2[100] = "World";
 	// Declare a new Strings
 	// to store the concatenated String
 	char str3[100];
 	int i = 0, j = 0;
 	printf("\nFirst string: %s", str1);
 	printf("\nSecond string: %s", str2);
 	// Insert the first string
 	// in the new string
 	while (str1[i] != ''\0'') {
 		str3[j] = str1[i];
 		i++;
 		j++;
 	}
 	// Insert the second string
 	// in the new string
 	i = 0;
 	while (str2[i] != ''\0'') {
 		str3[j] = str2[i];
 		i++;
 		j++;
 	}
 	str3[j] = ''\0'';
 	// Print the concatenated string
 	printf("\nConcatenated string: %s", str3);
 	return 0;
 }
');
INSERT INTO c_programs (problem_statement, code)VALUES
('C program to copy string',
'#include<stdio.h>
     int main() {
         char str1[100], str2[100], i;
         printf("Enter string 1: ");
         fgets(str1, sizeof(str1), stdin);
         for (i = 0; str1[i] != ''\0''; ++i) {
             str2[i] = str1[i];
         }
         str2[i] = ''\0'';
         printf("String 2: %s", str2);
         return 0;
     }');
INSERT INTO c_programs (problem_statement, code)VALUES
('C program to sort element in lexicographical order',
'#include<stdio.h>
 #include<string.h>
 int main ()
 {
   char str[5][50], temp[50];
   printf ("Enter 5 words: ");
   for (int i = 0; i < 5; ++i)
     {
       fgets (str[i], sizeof (str[i]), stdin);
     }
   for (int i = 0; i < 5; ++i)
     {
       for (int j = i + 1; j < 5; ++j) { if (strcmp (str[i], str[j]) > 0)
 	    {
 	      strcpy (temp, str[i]);
 	      strcpy (str[i], str[j]);
 	      strcpy (str[j], temp);
 	    }
 	}
     }
   printf ("\nIn the lexicographical order: \n");
   for (int i = 0; i < 5; ++i)
     {
       fputs (str[i], stdout);
     }
   return 0;
 }');

select * from c_programs;
INSERT INTO c_programs (problem_statement, code)VALUES
('Define String','A String in C programming is a sequence of characters terminated with a null character ‘\0’. ');
INSERT INTO c_programs (problem_statement, code)VALUES
('String Syntax','Syntax:-char string_name[size];
In the above syntax string_name is any name given to the string variable and size is used to define the length of the string,
 i.e the number of characters strings will store.');
INSERT INTO c_programs (problem_statement, code)VALUES
('string Initializing ways',' string in C can be initialized in different ways.
We will explain this with the help of an example
We can initialize a C string in 4 different ways which are as follows:
1. Assigning a String Literal without Size
String literals can be assigned without size. Here, the name of the string str acts as a pointer because it is an array.
   Example:-char str[] = "C_programming";

2. Assigning a String Literal with a Predefined Size
String literals can be assigned with a predefined size. But we should always account for one extra space which will be assigned to the null character.
If we want to store a string of size n then we should always declare a string with a size equal to or greater than n+1.
  Example:-char str[50] = "C_programming";

3. Assigning Character by Character with Size
We can also assign a string character by character. But we should remember to set the end character as ‘\0’ which is a null character.
   Example:-char str[14] = { ''C'',''p'',''r'',''o'',''g'',''r'',''a'',''m'',''m'',''i'',''n'',''g'',''\0''};

4. Assigning Character by Character without size
We can assign character by character without size with the NULL character at the end.
The size of the string is determined by the compiler automatically.
   Example:-char str[] = { ''C'',''p'',''r'',''o'',''g'',''r'',''a'',''m'',''m'',''i'',''n'',''g'',''\0''};');
INSERT INTO c_programs (problem_statement, code)VALUES
('String sample program',
'// C program to illustrate strings
 #include <stdio.h>
 #include <string.h>
 int main()
 {
 	// declare and initialize string
 	char str[] = "Geeks";
 	// print string
 	printf("%s\n", str);
 	int length = 0;
 	length = strlen(str);
  	// displaying the length of string
 	printf("Length of string str is %d", length);
 	return 0;
 }
');
INSERT INTO c_programs (problem_statement, code)VALUES
('define string.h header file',
'string.h is a standard header file in the C language that contains functions for manipulating strings (arrays of characters).
<string.h> header file contains some useful string functions that can be directly used in a program by invoking the #include preprocessor directive.

 Syntax:
 #include <string.h>'
 );
INSERT INTO c_programs (problem_statement, code)VALUES
('List string.h library function',
' 1)strlen():-Returns the length of the string.
  2)strcpy():-Copy one string to another.
  3)strncpy():-Copy first n characters of one string to another.
  4)strcat():- Concatenates two strings.
  5)strncat():-Concatenates first n characters of one string to another.
  6)strcmp():- Compares two strings.
  7)strncmp():-Compares first n characters of two strings.
  8)strchr():-Find the first occurrence of the given character in the string.
  9)strrchr():- Finds the last occurrence of the given characters in the string.
  10)strstr():-Find the given substring in the string.
  11)strcspn():-Returns the span of the source string not containing any character of the given string.
  12)strspn():-Returns the span of the source string containing only the characters of the given string.
  13)strpbrk():- Finds the first occurrence of any of the characters of the given string in the source string.
  14)strtok():-Split the given string into tokens based on some character as a delimiter.
  15)strcoll():-Compares two strings that are passed.
  16)memset():-Initialize a block of memory with the given character.
  17)memcmp():-Compares two blocks of memory.
  18)memcpy():-Copy two blocks of memory.
  19)memmove():-Moves two blocks of memory.
  20)memchr():-Finds the given character in the block of memory.');
INSERT INTO c_programs (problem_statement, code)VALUES
('program to use inbuilt string functions',
'// C program to demonstrate the use of different functions
 // of string.h library
 #include <stdio.h>
 #include <string.h>
 // defining the common size of the string arrays
 #define size 50
 int main()
 {
 	char destString[size] = "CLanguage";
 	char sourceString[size] = "Chatbot";
 	char tempDestString[size];
 	printf("Length of Destination String: %d\n",
 		strlen(destString));
 	// copying sourceString to tempDestString using strcpy()
 	strcpy(tempDestString, sourceString);
 	printf("tempDestString after strcpy(): %s\n",
 		tempDestString);
 	// concatenating source to destination using strcat()
 	strcat(destString, sourceString);
 	printf("destString after Concatenation: %s\n",
 		destString);
 	// comparison using strcmp()
 	printf("Comparing destString with sourceString: %d\n",
 		strcmp(destString, sourceString));
 	printf("Comparing first 5 characters: %d\n",
 		strncmp(destString, sourceString, 5));
 	// searching substring using strstr()
 	printf("Searching sourceString in destString: %s\n",
 		strstr(destString, sourceString));
 	return 0;
 }
');
INSERT INTO c_programs (problem_statement, code)VALUES
('datatype used in string','%s
#include <stdio.h>
int main()
{
    char name[20];
    printf("Enter name: ");
    scanf("%s", name);
    printf("Your name is %s.", name);
    return 0;
    }');
INSERT INTO c_programs (problem_statement, code)VALUES
('gets and puts function',
'Functions gets() and puts() are two string functions to take string input from the user and display it respectively
Example:-
#include<stdio.h>
int main()
{
    char name[30];
    printf("Enter name: ");
    gets(name);     //Function to read string from user.
    printf("Name: ");
    puts(name);    //Function to display string.
    return 0;
}');
INSERT INTO c_programs (problem_statement, code)VALUES
('Algorithm to find frequency of character in string',
'1)Define a string.
 2)Define an array freq with the same size of the string.
 3)Two loops will be used to count the frequency of each character.
 Outer loop will be used to select a character and initialize element at corresponding index in array freq with 1.
 4)Inner loop will compare the selected character with rest of the characters present in the string.
 5)If a match found, increment element in freq by 1 and set the duplicates of selected character by ''0'' to mark them as visited.
 6)Finally, display the character and their corresponding frequencies by iterating through the array freq.');
INSERT INTO c_programs (problem_statement, code)VALUES
('Algorithm to find number of vowels and consonants in string',
'1)Define a string.
 2)Convert the string to lower case so that comparisons can be reduced. Else we need to compare with capital (A, E, I, O, U).
 3)If any character in string matches with vowels (a, e, i, o, u ) then increment the vcount by 1.
 4)If any character lies between ''a'' and ''z'' except vowels, then increment the count for ccount by 1.
 5)Print both the counts.');
INSERT INTO c_programs (problem_statement, code)VALUES
('Algorithm to reverse a string ',
'1)Start
 2)Declare all the variables ( integer and character type )
 3)Enter the string to be reversed
 4)Find out the length of string
 5)Swap the position of array element using loop
 6)Store the swapped position
 7)Print the reversed string as console output
 8)Stop');
INSERT INTO c_programs (problem_statement, code)VALUES
('Algorithm to find length of string ',
'1)Initialize a variable ‘str’ , ‘i’ , ‘length’.
2)Accept the value using ‘printf’ and ‘scanf’.
3)Initiate a for loop.
4)Terminate the loop when null(‘\0’).
5)Print length.
');
INSERT INTO c_programs (problem_statement, code)VALUES
('Algorith to concatenate String',
'1)The two strings will be combined into one.
 2)Using the gets() function, read two strings entered as gets(s1) and gets(s2).
 3)Using the string library function strlen(s1), get the length of the string s1 and set it to j.
 The for loop iterates across the for(i=0;s2[i]!=''\0′;i++) structure.
 Append the characters of string s2 to the string s1[i+j] until there are no more characters in the string s2.
 4)The string s2 is appended to the end of the string s1.
 5)Print the s1 string, which has been concatenated.');
INSERT INTO c_programs (problem_statement, code)VALUES
('Algorithm to copy a string',
'Step 1: Start
 Step 2: Declare the variable str1 and str2.
 Step 3: Read input str1 from the user or predefine it according to the need.
 Step 4: Use the syntax to copy the string into the empty string.
        Syntax:for (i = 0; s1[i] != ''\0''; ++i)
                {
                    s2[i] = s1[i];
                }
 Step 5: Print the result of the program compiled.
 Step 6:  Program end.');
INSERT INTO c_programs (problem_statement, code)VALUES
('Algoritm to sort elements in lexicographical order',
'Lexicographical Order can be understood as the order of alphabets we witness in a dictionary
i.e. similar to the traditional alphabetical order we learn since our childhood.');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Definition of function',
'A function in C is a set of statements that when called perform some specific task.
It is the basic building block of a C program that provides modularity and code reusability.
The programming statements of a function are enclosed within { } braces, having certain meanings and performing certain operations.
They are also called subroutines or procedures in other languages.');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Syntax of function',
'The syntax of function can be divided into 3 aspects:
Function Declaration
Function Definition
Function Calls
Function declaration
  int sum(float a, float b);
  Where ,int:-return type
  sum:-function name;
  float:-parameter type
  a:-parameter name
  Note:-It must end with semicolon

Function definition
return_type function_name (para1_type para1_name, para2_type para2_name)
{
    // body of the function
}

Function calls

#include <stdio.h>
int sum(int a, int b)
{
return a + b;
}

// Driver code
int main()
{
// Calling sum function and
int add = sum(10, 30);
printf("Sum is: %d", add);
return 0;
}');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Define function return type',
'Function return type tells what type of value is returned after all function is executed. When we don’t want to return a value, we can use the void data type.
Example:-
int func(parameter_1,parameter_2);
Here,integer is the return type.');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Define function argument',
'Function Arguments (also known as Function Parameters) are the data that is passed to a function.
Example:-int function_name(int var1, int var2);');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Conditions of Return type and arguments',
'In C programming language, functions can be called either with or without arguments and might return values. They may or might not return values to the calling functions.
Function with no arguments and no return value
Function with no arguments and with return value
Function with argument and with no return value
Function with arguments and with return value');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Working of Functions',
'Working of the C function can be broken into the following steps as mentioned below:
Declaring a function: Declaring a function is a step where we declare a function. Here we define the return types and parameters of the function.
Defining a function:
Calling the function: Calling the function is a step where we call the function by passing the arguments in the function.
Executing the function: Executing the function is a step where we can run all the statements inside the function to get the final result.
Returning a value: Returning a value is the step where the calculated value after the execution of the function is returned.
Exiting the function is the final step where all the allocated memory to the variables, functions, etc is destroyed before giving full control to the main function.');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Types of functions',
'There are two types of functions in C:
Library Functions:-
      A library function is also referred to as a “built-in function”. A compiler package already exists that contains these functions, each of which has a specific meaning and is included in the package. Built-in functions have the advantage of being directly usable without being defined, whereas user-defined functions must be declared and defined before being used.
For Example:-pow(), sqrt(), strcmp(), strcpy() etc.
User Defined Functions:-
      Functions that the programmer creates are known as User-Defined functions or “tailor-made functions”.
      User-defined functions can be improved and modified according to the need of the programmer.
      Whenever we write a function that is case-specific and is not defined in any header file, we need to declare and define our own functions according to the syntax.');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Types of parameters',
'Formal parameters and Actual parameters
definition:-The Actual parameters are the variables that are transferred to the function when it is requested.
The Formal Parameters are the values determined by the function that accepts values when the function is declared.
In actual parameters, only the variable is mentioned, not the data types.');
INSERT INTO c_programs (problem_statement, code)VALUES(
'What is passing parameters to function',
'We can pass arguments to the C function in two ways:
Pass by Value
Pass by Reference
1. Pass by Value
Parameter passing in this method copies values from actual parameters into formal function parameters. As a result, any changes made inside the functions do not reflect in the caller’s parameters.
Example:-
// C program to show use
// of call by value
#include <stdio.h>
void swap(int var1, int var2)
{
int temp = var1;
var1 = var2;
var2 = temp;
}
// Driver code
int main()
{
int var1 = 3, var2 = 2;
printf("Before swap Value of var1 and var2 is: %d, %d\n",
   	 var1, var2);
swap(var1, var2);
printf("After swap Value of var1 and var2 is: %d, %d",
   	 var1, var2);
return 0;
}
2. Pass by Reference
The caller’s actual parameters and the function’s actual parameters refer to the same locations, so any changes made inside the function are reflected in the caller’s actual parameters.
Example:-
// C program to show use of
// call by Reference
#include <stdio.h>

void swap(int *var1, int *var2)
{
int temp = *var1;
*var1 = *var2;
*var2 = temp;
}
// Driver code
int main()
{
int var1 = 3, var2 = 2;
printf("Before swap Value of var1 and var2 is: %d, %d\n",
   	 var1, var2);
swap(&var1, &var2);
printf("After swap Value of var1 and var2 is: %d, %d",
   	 var1, var2);
return 0;
}');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Syntax of userdefined function',
'To use a user-defined function, we first have to understand the different parts of its syntax.
The user-defined function in C can be divided into three parts:
Function Prototype
Function Definition
Function Call
Function prototype:-
A function prototype is also known as a function declaration which specifies the function’s name, function parameters, and return type. The function prototype does not contain the body of the function.  It is basically used to inform the compiler about the existence of the user-defined function which can be used in the later part of the program.
Syntax
return_type function_name (type1 arg1, type2 arg2, ... typeN argN);
Function Definition:-
Once the function has been called, the function definition contains the actual statements that will be executed. All the statements of the function definition are enclosed within { } braces.
Syntax
return_type function_name (type1 arg1, type2 arg2 .... typeN argN) {
    // actual statements to be executed
    // return value if any
}
Function calls:-
In order to transfer control to a user-defined function, we need to call it. Functions are called using their names followed by round brackets. Their arguments are passed inside the brackets.
Syntax
function_name(arg1, arg2, ... argN);

Example:-
// C Program to illustrate the use of user-defined function
#include <stdio.h>
// Function prototype
int sum(int, int);
// Function definition
int sum(int x, int y)
{
    int sum;
    sum = x + y;
    return x + y;
}
// Driver code
int main()
{
    int x = 10, y = 11;
    // Function call
    int result = sum(x, y);
    printf("Sum of %d and %d = %d ", x, y, result);
    return 0;
}');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Define Main function' ,
'The main function is an integral part of the programming languages such as C, C++, and Java. The main function in C is the entry point of a program where the execution of a program starts. It is a user-defined function that is mandatory for the execution of a program because when a C program is executed, the operating system starts executing the statements in the main() function.
Syntax of C main() Function
return_type main() {
    // Statement 1;
    // Statement 2;
    // and so on..
    return;
}');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Importance of main function',
'It is the function where the program’s execution starts.
Every program has exactly one main function.
The name of this function should be “main” not anything else.
The main function always returns an integer value or void.
The main function is called by OS, not the user.');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Types of main functions',
'Main function with no arguments and void return type:-
Syntax:void main()
{
   // Function body
}
Main function with no arguments and int return type
         Syntax:- int main()
         {
             // Function body
          }
Main function with the Command Line Arguments:
Syntax:-
int main(int argc, char* argv[])
{
   // Function body
}');
INSERT INTO c_programs (problem_statement, code)VALUES(
'Nested functions',
'Some programmer thinks that defining a function inside an another function is known as “nested function”. But the reality is that it is not a nested function, it is treated as lexical scoping. Lexical scoping is not valid in C because the compiler cant reach/find the correct memory location of the inner function. Nested function is not supported by C because we cannot define a function within another function in C. We can declare a function inside a function, but it’s not a nested function. Because nested functions definitions can not access local variables of the surrounding blocks, they can access only global variables of the containing module. This is done so that lookup of global variables doesn’t have to go through the directory. As in C, there are two nested scopes: local and global (and beyond this, built-ins). Therefore, nested functions have only a limited use. If we try to approach nested function in C, then we will get compile time error.
Example:-
// C program of nested function
// with the help of gcc extension
#include <stdio.h>
int main(void)
{
    auto int view(); // declare function with auto keyword
    view(); // calling function
    printf("Main\n");
    int view()
    {
   	 printf("View\n");
   	 return 1;
    }
    printf("Chatbot");
    return 0;
}');
INSERT INTO c_programs(problem_statement, code)VALUES('what is C',
'C is a general-purpose, procedural, high-level programming language used in the development of computer software and applications, system programming, games, and many more.‘');

INSERT INTO c_programs(problem_statement, code)VALUES('features',
'The most important features of the C language are as follows:
Procedural Language
Fast and Efficient
Modularity
Statically Type
General-Purpose Language
Rich set of built-in Operators
Libraries with Rich Functions
Middle-Level Language
Portability
Easy to Extend
');

INSERT INTO c_programs(problem_statement, code)VALUES('Advantages of c language',
'Advantages of C language are as follows:
Efficiency: C is a fast and efficient language that can be used to create high-performance applications.
Portability: C programs can be compiled and run on a wide range of platforms and operating systems.
Low-level access: C provides low-level access to system resources, making it ideal for systems programming and developing operating systems.
Large user community: C has a large and active user community, which means there are many resources and libraries available for developers.
Widely used: C is a widely used language, and many modern programming languages are built on top of it.
');

INSERT INTO c_programs(problem_statement, code)VALUES('Disadvantages of c language',
'Disadvantages of C language are as follows:
Steep learning curve: C can be difficult to learn, especially for beginners, due to its complex syntax and low-level access to system resources.
Lack of memory management: C does not provide automatic memory management, which can lead to memory leaks and other memory-related bugs if not handled properly.
No built-in support for object-oriented programming: C does not provide built-in support for object-oriented programming, making it more difficult to write object-oriented code compared to languages like Java or Python.
No built-in support for concurrency: C does not provide built-in support for concurrency, making it more difficult to write multithreaded applications compared to languages like Java or Go.
Security vulnerabilities: C programs are prone to security vulnerabilities, such as buffer overflows, if not written carefully.
');

INSERT INTO c_programs(problem_statement, code)VALUES('Advantages and Disadvantages of c language',
'Advantages of C language are as follows:
Efficiency: C is a fast and efficient language that can be used to create high-performance applications.
Portability: C programs can be compiled and run on a wide range of platforms and operating systems.
Low-level access: C provides low-level access to system resources, making it ideal for systems programming and developing operating systems.
Large user community: C has a large and active user community, which means there are many resources and libraries available for developers.
Widely used: C is a widely used language, and many modern programming languages are built on top of it.
Disadvantages of C language are as follows:
Steep learning curve: C can be difficult to learn, especially for beginners, due to its complex syntax and low-level access to system resources.
Lack of memory management: C does not provide automatic memory management, which can lead to memory leaks and other memory-related bugs if not handled properly.
No built-in support for object-oriented programming: C does not provide built-in support for object-oriented programming, making it more difficult to write object-oriented code compared to languages like Java or Python.
No built-in support for concurrency: C does not provide built-in support for concurrency, making it more difficult to write multithreaded applications compared to languages like Java or Go.
Security vulnerabilities: C programs are prone to security vulnerabilities, such as buffer overflows, if not written carefully.
');

INSERT INTO c_programs(problem_statement, code)VALUES('Comments',
'The comments in C are human-readable explanations or notes in the source code of a C program.  A comment makes the program easier to read and understand. These are the statements that are not executed by the compiler or an interpreter.
Types of comments in C language
In C there are two types of comments in C language:
1.Single-line comment
2.Multi-line comment');
INSERT INTO c_programs(problem_statement, code)VALUES('Types of comments' ,
'Types of comments in C language.
In C there are two types of comments in C language:
1.Single-line comment.
A single-line comment in C starts with ( // ) double forward slash. It extends till the end of the line and we don’t need to specify its end.

Syntax:
// This is a single line comment

Example:
// program to illustrate
// use of single-line comment
#include <stdio.h>
int main()
{
    // This is a single-line comment
    printf("Hello");
    return 0;
}

2.Multi-line comment.
The Multi-line comment in C starts with a forward slash and asterisk ( /* ) and ends with an asterisk and forward slash ( */ ). Any text between /* and */ is treated as a comment and is ignored by the compiler. It can apply comments to multiple lines in the program.

Syntax:
/*Comment starts
    continues

    .
    .
    Comment ends*/
Example:
/* program to illustrate
use of
multi-line comment */
#include <stdio.h>
int main()
{
    /*
    This is a
    multi-line comment
    */

      /*
    This comment contains some code which
    will not be executed.
    printf("Code enclosed in Comment");
    */
    printf("Hello");
    return 0;
}
');


INSERT INTO c_programs(problem_statement, code)VALUES('Define Tokens',
'A token in C can be defined as the smallest individual element of the C programming language that is meaningful to the compiler. It is the basic component of a C program.
');

INSERT INTO c_programs(problem_statement, code)VALUES('Types of Tokens',
'The tokens of C language can be classified into six types based on the functions they are used to perform. The types of C tokens are as follows:
Keywords
Identifiers
Constants
Strings
Special Symbols
Operators');

INSERT INTO c_programs(problem_statement, code)VALUES('define keywords',
'The keywords are pre-defined or reserved words in a programming language. Each keyword is meant to perform a specific function in a program. Since keywords are referred names for a compiler, they can’t be used as variable names because by doing so, we are trying to assign a new meaning to the keyword which is not allowed. You cannot redefine keywords. However, you can specify the text to be substituted for keywords before compilation by using C preprocessor directives. C language supports 32 keywords which are given below:
auto         double       int           struct
break        else          long        switch
case         enum        register   typedef
char         extern        return      union
const        float           short       unsigned
continue     for           signed     void
default      goto          sizeof      volatile
do             if               static       while
');

INSERT INTO c_programs(problem_statement, code)VALUES('define Identifiers',
'Identifiers are used as the general terminology for the naming of variables, functions, and arrays. These are user-defined names consisting of an arbitrarily long sequence of letters and digits with either a letter or the underscore(_) as a first character. Identifiers are case-sensitive so names like variable and Variable will be treated as different.
For example,
main: method name.
a: variable name.
');

INSERT INTO c_programs(problem_statement, code)VALUES('Rules for Naming Identifiers',
'Certain rules should be followed while naming c identifiers which are as follows:
They must begin with a letter or underscore(_).
They must consist of only letters, digits, or underscore. No other special character is allowed.
It should not be a keyword.
It must not contain white space.
It should be up to 31 characters long as only the first 31 characters are significant.
');

INSERT INTO c_programs(problem_statement, code)VALUES('define Constants',
'The constants refer to the variables with fixed values. They are like normal variables but with the difference that their values can not be modified in the program once they are defined. Constants may belong to any of the data types.
Syntax:
const data_type var_name = value;

Examples :
const int var = 5;
const is a keyword,
int is data type,
var is name of student,
5 is  initial value.');

INSERT INTO c_programs(problem_statement, code)VALUES('define Strings',
'Strings are nothing but an array of characters ended with a null character (‘\0’). This null character indicates the end of the string. Strings are always enclosed in double quotes. Whereas, a character is enclosed in single quotes.
char string[20] = {‘C ’h’, ‘a’, ‘t’, ‘b’, ‘o’, ‘t’‘\0’};
char string[20] = “Chatbot”;
char string [] = “Chatbot”;
');

INSERT INTO c_programs(problem_statement, code)VALUES('define special symbols',
'The following special symbols are used in C having some special meaning and thus, cannot be used for some other purpose. Some of these are listed below:
Brackets[]: Opening and closing brackets are used as array element references. These indicate single and multidimensional subscripts.
Parentheses(): These special symbols are used to indicate function calls and function parameters.
Braces{}: These opening and ending curly braces mark the start and end of a block of code containing more than one executable statement.
Comma (, ): It is used to separate more than one statement like for separating parameters in function calls.
Colon(:): It is an operator that essentially invokes something called an initialization list.
Semicolon(;): It is known as a statement terminator.  It indicates the end of one logical entity. That’s why each individual statement must be ended with a semicolon.
Asterisk (*): It is used to create a pointer variable and for the multiplication of variables.
Assignment operator(=): It is used to assign values and for logical operation validation.
Pre-processor (#): The preprocessor is a macro processor that is used automatically by the compiler to transform your program before actual compilation.
Period (.): Used to access members of a structure or union.
Tilde(~): Used as a destructor to free some space from memory.');
INSERT INTO c_programs(problem_statement, code)VALUES('define Operators',
'Operators are symbols that trigger an action when applied to C variables and other objects. The data items on which operators act are called operands.
Depending on the number of operands that an operator can act upon, operators can be classified as follows:
Unary Operators: Those operators that require only a single operand to act upon are known as unary operators.For Example increment and decrement operators
Binary Operators: Those operators that require two operands to act upon are called binary operators. Binary operators can further are classified into:


Arithmetic operators
Relational Operators
Logical Operators
Assignment Operators
Bitwise Operator
Ternary Operator: The operator that requires three operands to act upon is called the ternary operator. Conditional Operator(?) is also called the ternary operator.
');

INSERT INTO c_programs(problem_statement, code)VALUES('define variable',
'A variable in C language is the name associated with some memory location to store data of different types. There are many types of variables in C depending on the scope, storage class, lifetime, type of data they store, etc. A variable is the basic building block of a C program that can be used in expressions as a substitute in place of the value it stores.
Syntax:
data_type variable_name = value;    // defining single variable with value
 or
data_type variable_name;     // defining single variable
or
data_type variable_name1, variable_name2;    // defining multiple variable
data_type: Type of data that a variable can store.
variable_name: Name of the variable given by the user.
value: value assigned to the variable by the user.
Example:
int a;
float b;
char c;   ');
INSERT INTO c_programs(problem_statement, code)VALUES('aspects of defining variable',
'There are 3 aspects of defining a variable:
Variable Declaration
Variable Definition
Variable Initialization
1. C Variable Declaration
Variable declaration in C tells the compiler about the existence of the variable with the given name and data type.When the variable is declared compiler automatically allocates the memory for it.

Example:
data_type variable_name;

2. C Variable Definition
In the definition of a C variable, the compiler allocates some memory and some value to it. A defined variable will contain some random garbage value till it is not initialized.
Syntax:
type variableName = value;

Example:
int var;
char var2;

3. C Variable Initialization
Initialization of a variable is the process where the user assigns some meaningful value to the variable.
Syntax:
datatype variable_name = value;

Example:
int var;  // variable definition
var = 100;  // initialization
     or
int var = 100;  // variable declaration and definition');
INSERT INTO c_programs(problem_statement, code)VALUES( 'variable declaration',
'Variable Declaration:
The process of telling the compiler about a variable''s'' existence and data type is known as variable declaration. It notifies the compiler that a variable with a specific name and data type will be used in the program. Still, no memory for the variable is allocated at this moment. It is usually seen at the start of a function or block before the variable is utilized.

Syntax:
data_type variable_name;

Example of variable declaration:
#include <stdio.h>
int main() {
              // Variable declaration
int age;
float salary;
char initial;

return 0;
}  ');

INSERT INTO c_programs(problem_statement, code)VALUES( 'variable definition',
'Variable Definition:
The process of reserving memory space for the variable to keep its contents during program execution is known as a variable definition. It is based on the data type and connects the variable name with a particular memory address of sufficient size.
A variable in C can be declared and defined in the same statement, although they can also be separated if necessary.

Syntax:
type variableName = value;

Example of variable definition:

#include <stdio.h>
 int main() {
          // Variable definition
int age = 25;
float salary = 2500.5;
char initial = ''J'';

return 0;
}  ');

INSERT INTO c_programs(problem_statement, code)VALUES(' variable initialization',
'Variable Initialization:
Variable declaration is the act of informing the compiler about the existence and data type of a variable. It informs the compiler that a variable with a specific name and data type will be used in the program, but that memory for the variable still needs to be allocated.
Syntax:
datatype variable_name = value;

Example of variable initialization:
#include <stdio.h>
int main() {
// Variable definition and initialization
int age = 25;
float salary = 2500.5;
char initial = ''J'';
// Later in the program, you can change the value of the variable
age = 30;
salary = 3000.0;

return 0;
}
');

INSERT INTO c_programs(problem_statement, code)VALUES('Rules for Naming Variables' ,
'Rules for Naming Variables
You can assign any name to the variable as long as it follows the following rules:
A variable name must only contain alphabets, digits, and underscore.
Example: int
A variable name must start with an alphabet or an underscore only. It cannot start with a digit.
No whitespace is allowed within the variable name.
A variable name must not be any reserved word or keyword.');
INSERT INTO c_programs(problem_statement, code)VALUES('Types of  Variables' ,
'The C variables can be classified into the following types:
Local Variables
Global Variables
Static Variables
1. Local Variables in C
A Local variable in C is a variable that is declared inside a function or a block of code. Its scope is limited to the block or function in which it is declared.
Example:.
#include <stdio.h>

void function()
{
	int x = 10; // local variable
	printf("%d", x);
}

int main() { function(); }


2. Global Variables in C
A Global variable in C is a variable that is declared outside the function or a block of code. Its scope is the whole program i.e. we can access the global variable anywhere in the C program after it is declared.
Example:
#include <stdio.h>

int x = 20; // global variable

void function1() { printf("Function 1: %d\n", x); }
void function2() { printf("Function 2: %d\n", x); }
int main()
{
function1();
function2();
return 0;
}

3. Static Variables in C
A Static variable is a variable that is defined using the static keyword. It can be defined only once in a C program and its scope depends upon the region where it is declared (can be global or local).
The default value of static variables is zero.
Syntax :
static data_type variable_name = initial_value;
Example :
// C program to demonstrate use of static variable
#include <stdio.h>

void function()
{
	int x = 20; // local variable
	static int y = 30; // static variable
	x = x + 10;
	y = y + 10;
	printf("\tLocal: %d\n\tStatic: %d\n", x, y);
}

int main()
{
	printf("First Call\n");
	function();
	printf("Second Call\n");
	function();
	printf("Third Call\n");
	function();
	return 0;
}');
INSERT INTO c_programs(problem_statement, code)VALUES('Define Local Variable ',
'A Local variable is a variable that is declared inside a function or a block of code. Its scope is limited to the block or function in which it is declared.
Example:.
#include <stdio.h>

void function()
{
	int x = 10; // local variable
	printf("%d", x);
}
int main() { function(); }');
INSERT INTO c_programs(problem_statement, code)VALUES('Define Global Variable' ,
'A Global variable  is a variable that is declared outside the function or a block of code. Its scope is the whole program i.e. we can access the global variable anywhere in the C program after it is declared.
Example:
#include <stdio.h>

int x = 20; // global variable

void function1() { printf("Function 1: %d\n", x); }
void function2() { printf("Function 2: %d\n", x); }
int main()
{
function1();
function2();
return 0;
}');

INSERT INTO c_programs(problem_statement, code)VALUES('Define Static Variable ',
'A Static variable is a variable that is defined using the static keyword. It can be defined only once in a C program and its scope depends upon the region where it is declared (can be global or local).
The default value of static variables is zero.
Syntax :
static data_type variable_name = initial_value;
Example :
// C program to demonstrate use of static variable
#include <stdio.h>

void function()
{
	int x = 20; // local variable
	static int y = 30; // static variable
	x = x + 10;
	y = y + 10;
	printf("\tLocal: %d\n\tStatic: %d\n", x, y);
}

int main()
{
	printf("First Call\n");
	function();
	printf("Second Call\n");
	function();
	printf("Third Call\n");
	function();
	return 0;
}');

INSERT INTO c_programs(problem_statement, code)VALUES('Define constant',
'A constant in C is a variable that cannot be modified once it is declared in the program. We can not make any change in the value of the constant variables after they are defined.
Syntax:const data_type var_name = value;');

INSERT INTO c_programs(problem_statement, code)VALUES('C program to Check Whether a Number is Positive or Negative or Zero',
'#include <stdio.h> 

int main() 
{ 
	int A; 

	printf("Enter the number A: "); 
	scanf("%d", &A); 

	if (A > 0) 
		printf("%d is positive.", A); 
	else if (A < 0) 
		printf("%d is negative.", A); 
	else if (A == 0) 
		printf("%d is zero.", A); 

	return 0; 
} 
');

INSERT INTO c_programs(problem_statement, code)VALUES('Program to Check Even or Odd',
'// C program for the above approach 
#include <stdio.h> 

// Function to check if a 
// number is even or odd 
void checkEvenOdd(int N) 
{ 
	// Find remainder 
	int r = N % 2; 

	// Condition for even 
	if (r == 0) 
	{ 
		printf("Even"); 
	} 

	// Otherwise 
	else
	{ 
		printf("Odd"); 
	} 
} 

// Driver Code 
int main() 
{ 
	// Given number N 
	int N = 101; 

	// Function Call 
	checkEvenOdd(N); 

	return 0; 
}
');


INSERT INTO c_programs(problem_statement, code)VALUES('C Program to Check Vowel or Consonant',
'// C program to check if a character
// is a vowel or consonant
#include <stdio.h>

// Driver code
int main()
{
	char ch = ''A'';

	// Checking if the character ch
	// is a vowel or not.
	if (ch == ''a'' || ch == ''A'' || ch == ''e'' || ch == ''E''
		|| ch == ''i'' || ch == ''I'' || ch == ''o'' || ch == ''O''
		|| ch == ''u'' || ch == ''U'') {

		printf("The character %c is a vowel.\n", ch);
	}
	else {
		printf("The character %c is a consonant.\n", ch);
	}

	return 0;
}
');

INSERT INTO c_programs(problem_statement, code)VALUES('C program to Find the Largest Number Among Three Numbers',
'// C program to find the maximum number out of the three
// given numbers using if-else statement
#include <stdio.h>

int main()
{
	int A, B, C;

	printf("Enter the numbers A, B and C: ");
	scanf("%d %d %d", &A, &B, &C);

	// finding max using compound expressions
	if (A >= B && A >= C)
		printf("%d is the largest number.", A);

	else if (B >= A && B >= C)
		printf("%d is the largest number.", B);

	else
		printf("%d is the largest number.", C);

	return 0;
}
');

INSERT INTO c_programs(problem_statement, code)VALUES('C Program to Calculate Sum of Natural Numbers',
'// C Program to demonstrate 
// Sum of Natural Numbers
// using while loops

#include <stdio.h>
int main()
{
	int i, s = 0;
	int n = 10;
	i = 1;

	// while loop executes 
	// the statements until the
	// condition is false
	while (i <= n) {
	
		// adding natural numbers 
		// up to given number n
		s += i;
		i++;
	}
	// printing the result
	printf("Sum = %d", s);
	return 0;
}
');

INSERT INTO c_programs(problem_statement, code)VALUES('Program to Print Alphabets From A to Z Using Loop',
'// C program to find the print
// Alphabets from A to Z

#include <stdio.h>

int main()
{
	// Declare the variables
	char i;

	// Display the alphabets
	printf("The Alphabets from A to Z are: \n");

	// Traverse each character
	// with the help of for loop
	for (i = ''A''; i <= ''Z''; i++) {

		// Print the alphabet
		printf("%c ", i);
	}

	printf("\nThe Alphabets from a to z are: \n");

	// Traverse each character
	// with the help of for loop
	for (i = ''a''; i <= ''z''; i++) {

		// Print the alphabet
		printf("%c ", i);
	}

	return 0;
}
');

INSERT INTO c_programs(problem_statement, code)VALUES('C program to check leap year',
'// C program to check if a given 
// year is leap year or not 
#include <stdbool.h> 
#include <stdio.h> 

bool checkYear(int year) 
{ 
	// If a year is multiple of 400, 
	// then it is a leap year 
	if (year % 400 == 0) 
		return true; 

	// Else If a year is multiple of 100, 
	// then it is not a leap year 
	else if (year % 100 == 0) 
		return false; 

	// Else If a year is multiple of 4, 
	// then it is a leap year 
	else if (year % 4 == 0) 
		return true; 
	// if no above condition is satisfied, then it is not 
	// a leap year 
	return false; 
} 

// Driver code 
int main() 
{ 
	int year = 2000; 

	if (checkYear(year)) { 
		printf("Leap Year"); 
	} 
	else { 
		printf("Not a Leap Year"); 
	} 
	return 0; 
}
');

INSERT INTO c_programs(problem_statement, code)VALUES('Algorithm to Check Leap Year in C',
'IF year % 400 = 0
   PRINT "Leap Year"
ELSE IF year % 100 = 0
   PRINT "Not a Leap Year"
ELSE IF year % 4 = 0
   PRINT "Leap Year"
END IF
PRINT "Not a Leap Year"');

INSERT INTO c_programs(problem_statement, code)VALUES('C program to find factorial of a number',
'// C program to find factorial of given number
#include <stdio.h>

// Function to find factorial of given number
unsigned int factorial(unsigned int n)
{
	if (n == 1) {
	return 1;
	}

	return n * factorial(n - 1);
}

// Driver code
int main()
{
	int num = 5;
	printf("Factorial of %d is %d", num, factorial(num));
	return 0;
}
');



INSERT INTO c_programs(problem_statement, code)VALUES('C Program to Make a Simple Calculator',
'// C Program to make a Simple Calculator Using switch case
#include <stdio.h>
#include <stdlib.h>

// Driver code
int main()
{
	char ch;
	double a, b;
	while (1) {
		printf("Enter an operator (+, -, *, /), "
			"if want to exit press x: ");
		scanf(" %c", &ch);

		// to exit
		if (ch == ''x'')
			exit(0);
		printf("Enter two first and second operand: ");
		scanf("%lf %lf", &a, &b);

		// Using switch case we will differentiate
		// operations based on different operator
		switch (ch) {

		// For Addition
		case ''+'':
			printf("%.1lf + %.1lf = %.1lf\n", a, b, a + b);
			break;

		// For Subtraction
		case ''-'':
			printf("%.1lf - %.1lf = %.1lf\n", a, b, a - b);
			break;

		// For Multiplication
		case ''*'':
			printf("%.1lf * %.1lf = %.1lf\n", a, b, a * b);
			break;

		// For Division
		case ''/'':
			printf("%.1lf / %.1lf = %.1lf\n", a, b, a / b);
			break;

		// If operator doesn''t match any case constant
		default:
			printf(
				"Error! please write a valid operator\n");
		}

		printf("\n");
	}
}
');


INSERT INTO c_programs(problem_statement, code)VALUES('C Program to Generate Multiplication Table',
'// C program to Demonstrate the
// Multiplication table of a number
#include <stdio.h>
void print_table(int range, int num)
{
	// Declaring a variable mul to store the product.
	int mul;

	// For loop to calculate the Multiplication table.
	for (int i = 1; i <= range; i++) {
		// To store the product.
		mul = num * i;

		// Printing the Multiplication Table.
		printf("%d * %d = %d", num, i, mul);

		// Proceeding to the next line.
		printf("\n");
	}
}
// Driver code
int main()
{

	// The range of the
	// Multiplication table
	int range = 10;

	// The number to calculate the
	// Multiplication table
	int num = 5;

	// Calling the Function.
	print_table(range, num);

	return 0;
}
');

INSERT INTO c_programs(problem_statement, code)VALUES('C program to print Fibonacci Series',
'// C Program to print the Fibonacci series using recursion
#include <stdio.h>

// first two values
int prev1 = 1;
int prev2 = 0;

// recursive function to print the fibonacci series
void fib(int n)
{
	if (n < 3) {
		return;
	}
	int fn = prev1 + prev2;
	prev2 = prev1;
	prev1 = fn;
	printf("%d ", fn);
	return fib(n - 1);
}

// function that handles the first two terms and calls the
// recursive function
void printFib(int n)
{
	// when the number of terms is less than 1
	if (n < 1) {
		printf("Invalid number of terms\n");
	}
	// when the number of terms is 1
	else if (n == 1) {
		printf("%d ", 0);
	}
	// when the number of terms is 2
	else if (n == 2) {
		printf("%d %d", 0, 1);
	}
	// number of terms greater than 2
	else {
		printf("%d %d ", 0, 1);
		fib(n);
	}
	return;
}

// driver code
int main()
{
	int n = 9;
	printFib(n);
	return 0;
}
');



INSERT INTO c_programs(problem_statement, code)VALUES(' C program to find LCM of two numbers',
'// C program to find LCM of 
// two numbers 
#include <stdio.h> 

// Driver code 
int main() 
{ 
	int x = 15, y = 25, max; 
	max = (x > y) ? x : y; 

	// While loop to check if max variable 
	// is divisible by x and y 
	while (1) { 
		if (max % x == 0 && max % y == 0) { 
			printf("The LCM of %d and %d is %d.", x, y, 
				max); 
			break; 
		} 

		++max; 
	} 

	return 0; 
}
');


INSERT INTO c_programs(problem_statement, code)VALUES('C Program to Check Armstrong Number',
'// C program to check given number
// is Armstrong number or not
// using Functions
#include <stdio.h>

// math.h is used for pow function.
#include <math.h>

// Function to calculate
// order of the number
int order(int x)
{
	int n = 0;
	while (x) {
		n++;
		x = x / 10;
	}
	return n;
}

// Function to check whether the
// given number is Armstrong
// number or not
int isArmstrong(int x)
{
	// Calling order function
	int n = order(x);
	int temp = x, sum = 0;
	while (temp) {
		int r = temp % 10;
		sum += pow(r, n);
		temp = temp / 10;
	}

	// If satisfies Armstrong condition
	if (sum == x)
		return 1;
	else
		return 0;
}

// Driver Program
int main()
{
	int x = 153;
	if (isArmstrong(x) == 1)
		printf("True\n");
	else
		printf("False\n");

	x = 1253;
	if (isArmstrong(x) == 1)
		printf("True\n");
	else
		printf("False\n");

	return 0;
}
');


INSERT INTO c_programs(problem_statement, code)VALUES('C Program to Reverse an Integer',
'// C program to implement 
// the above approach 
#include <stdio.h> 

// Iterative function to 
// reverse digits of num 
int reverseDigits(int num) 
{ 
	int rev_num = 0; 
	while (num > 0) { 
		rev_num = rev_num * 10 + num % 10; 
		num = num / 10; 
	} 
	return rev_num; 
} 

// Driver code 
int main() 
{ 
	int num = 4562; 
	printf("Reverse of is %d", reverseDigits(num)); 

	getchar(); 
	return 0; 
}
');


INSERT INTO c_programs(problem_statement, code)VALUES('Algorithm to Reverse an Integer',
'Input: num
(1) Initialize rev_num = 0
(2) Loop while num > 0
     (a) Multiply rev_num by 10 and add remainder of num
          divide by 10 to rev_num
               rev_num = rev_num*10 + num%10;
     (b) Divide num by 10
(3) Return rev_num');


INSERT INTO c_programs(problem_statement, code)VALUES('C program to check whether a number is palindrome or not ',
'// C program to check whether a number is palindrome or not 
#include <stdio.h> 

// Driver code 
int main() 
{ 
	// This is our given number 
	int original_number = 12321; 

	// This variable stored reversed digit 
	int reversed = 0; 

	int num = original_number; 

	// Execute a while loop to reverse 
	// digits of given number 
	while (num != 0) { 
		int r = num % 10; 
		reversed = reversed * 10 + r; 
		num /= 10; 
	} 

	// Compare original_number with 
	// reversed number 
	if (original_number == reversed) { 
		printf(" Given number %d is a palindrome number", 
			original_number); 
	} 
	else { 
		printf( 
			" Given number %d is not a palindrome number", 
			original_number); 
	} 
	
	return 0; 
}
');


INSERT INTO c_programs(problem_statement, code)VALUES('Algorithm for  program to check whether a number is palindrome or not',
'A simple method for this problem is to first reverse all the digits of a given number and then compare the reverse of the number with a given number. If both are the same, then return true, else false.

1.Declare an integer reversed = 0 and num = original_number
2.Now to reverse the number, do the following while num >= 0
1.reverse = 10 * reverse + num % 10;
2.num /= 10;
3.After getting the reverse number, compare it with the original _number,
4.If the reverse is equal to the original_number, then the number is palindrome.
5.Else, the number is not palindrome.');

INSERT INTO c_programs(problem_statement, code)VALUES('C Program to Display Prime Numbers Between Intervals',
'// C Program to Display Prime 
// Numbers Between Intervals 
#include <stdio.h>

// Driver code
int main()
{
	// Declare the variables
	int a, b, i, j, flag;

	// Ask user to enter lower value 
	// of interval
	printf("Enter lower bound of the interval: ");

	// Take input
	scanf("%d", &a); 

	// Ask user to enter upper value 
	// of interval
	printf("Enter upper bound of the interval: ");

	// Take input
	scanf("%d", &b); 

	// Print display message
	printf("Prime numbers between %d and %d are: ", 
			a, b);

	// Traverse each number in the interval
	// with the help of for loop
	for (i = a; i <= b; i++) 
	{
		// Skip 0 and 1 as they are
		// neither prime nor composite
		if (i == 1 || i == 0)
			continue;

		// flag variable to tell
		// if i is prime or not
		flag = 1;

		for (j = 2; j <= i / 2; ++j) 
		{
			if (i % j == 0) 
			{
				flag = 0;
				break;
			}
		}

		// flag = 1 means i is prime
		// and flag = 0 means i is 
		// not prime
		if (flag == 1)
			printf("%d ", i);
	}

	return 0;
}
');
    
    #select*from c_programs;
    #truncate c_programs;

