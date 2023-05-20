$ten = 10;
$twenty = 20;

for ($i = 0; $i < $ten; $i++) {
  print "Number is $i\n";
}

print "\n";

for ($i = 0; $i <= $ten; $i++) {
  print "Number is $i\n";
}

print "\n";

for $j (0..$ten) {
  print "J index is $j\n";
}

print "\n";

@fruit_list = ("apple", "banana", "orange");

for $fruit (@fruit_list) {
  print "Fruit is $fruit\n";
}

print "\n";

foreach $fruit (@fruit_list) {
  print "Fruit is $fruit\n";
}
