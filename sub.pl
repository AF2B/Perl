# Let's talk about sub routines in Perl.
# Sub routines in perl are like functions in other languages.
# You can use sub routines to create a function and call it later.

sub hello {
  print "Hello World!\n";
}

hello();

sub get_name {
  print "What's your name? ";
  $name = <STDIN>;
  chomp($name);
  return $name;
}

sub get_age {
  print "What's your age? ";
  $age = <STDIN>;
  chomp($age);
  return $age;
}

sub string_format($$) {
  my ($name, $age) = @_;
  return "Hello $name, you are $age years old.\n";
}

$name = get_name();
$age = get_age();
print string_format($name, $age);

# As you can see, Perl are so much easily to understand and to program.
# Let's turn this more interesting. Let's create a hash of names and ages.

sub get_two_names {
  print "What's your name? ";
  $name = <STDIN>;
  chomp($name);
  print "What's your friend name? ";
  $friend_name = <STDIN>;
  chomp($friend_name);
  return ($name, $friend_name);
}

sub get_two_ages {
  print "What's your age? ";
  $age = <STDIN>;
  chomp($age);
  print "What's your friend age? ";
  $friend_age = <STDIN>;
  chomp($friend_age);
  return ($age, $friend_age);
}

@names = get_two_names();
@ages = get_two_ages();

%names_ages = (
  $names[0] => $ages[0],
  $names[1] => $ages[1]
);

foreach $key (keys %names_ages) {
  print "Name: " . $key . "\n";
  print "Age: " . $names_ages{$key} . "\n";
}

@names_ages_list = ();

foreach $name (@names) {
  push(@names_ages_list, $name);
}
print @names_ages_list;

print "\n";

sub println {
  my ($string) = @_;
  print $string . "\n";
} # @_ is a special variable that contains all the arguments passed to the subroutine.
# Whatever you arguments you pass through the subroutine, it will be stored in the @_ variable.

sub println_all {
  print "@_\n";
}

$str = "Perl are awesome!";
$str_two = "Perl are awesome too!";
$str_three = "Perl are awesome three!";

println($str);

println_all($str, $str_two, $str_three);
