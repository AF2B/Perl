$number = 10;
$second_number = 25;

if ($number == 10) {
  print "Number is 10\n";
} elsif ($number == 20) {
  print "Number is 20\n";
} else {
  print "Number is not 10 or 20\n";
}

unless ($number == 20) {
  print "Number is not 20\n";
}

print "Number is 10\n" if ($number == 10);

print "Number is not 10\n" unless ($number == 10);

print "Number is 10\n" if ($number == 10 and $second_number == 25); # and operator

print "Number is 10\n" if ($number == 10 or $second_number == 25); # or operator

print "Number is 10\n" if ($number == 10 && $second_number == 25); # && operator

print "Number is 10\n" if ($number == 10 || $second_number == 25); # || operator

print "Number is 10\n" if ($number == 10 xor $second_number == 25); # xor operator

print "Number is 10\n" if ($number == 10 ^ $second_number == 25); # ^ operator

print "Number is 10\n" if (!($number == 10)); # ! operator

print "Number is 10\n" if (not($number == 10)); # not operator

$breakable = 2;
$unbreakable = 0;

print "Breakable\n" if (not($breakable == 1)); # not operator

print "Unbreakable\n" if (not($unbreakable == 1)); # not operator

print "Breakable and Unbreakable\n" if (not($breakable == 1) and not($breakable == 0)); # not operator

@tiny_list = (5, 2, 6);

# exists
if (exists($tiny_list[0])) {
  print "Exists\n";
} else {
  print "Not exists\n";
}
# exists(@list) means: check if the list exists.
# exists($list[index]) means: check if the list item exists.
if (exists($tiny_list[3])) {
  print "Exists\n";
} else {
  print "Not exists\n";
}

if (exists($list[0])) {
  print "Exists\n";
} else {
  print "Not exists\n";
}

# =~
if ($tiny_list[0] =~ @tiny_list) {
  print "Exists\n";
} else {
  print "Not exists\n";
}
# =~ means: check if the list item exists in the list.

# !~
if ($tiny_list[0] !~ @tiny_list) {
  print "Not exists\n";
} else {
  print "Exists\n";
}
# !~ means: check if the list item does not exist in the list.
