print("Hello, World!\n\n");
# In Perl, the print() function is used to print text to the standard output.

# But, how can we get the prompt variables from the user, like name, age, or any data?
# Check it out in the next example. =)

print("What's your name?: ");
$name = <STDIN>;
print("How old are you?: ");
$age = <STDIN>;
chomp($name, $age); # chomp() function removes the new line character from the end of the string.
print("\n"); # \n Describes a new line.
# Now you can print the variables with the print() function and show the user's data on the screen.
print("Your age is $age and your name is $name.\n");

# You can also use the printf() function to print formatted text.
printf("Your age is %d and your name is %s.\n", $age, $name);

# You can also use the sprintf() function to print formatted text and save it in a variable.
$var = sprintf("Your age is %d and your name is %s.\n", $age, $name);
print($var);

# You can also use the say() function to print text and add a new line at the end.
use feature 'say';
say("Hello, World!");

# You can also concatenate strings with the . operator.
print("Hello, " . "World!\n\n");

# You can also use the x operator to repeat a string.
print("Hello, " x 3 . "\n\n");
