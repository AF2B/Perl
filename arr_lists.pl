@list = ("a", "b", "c", "d");
print "list: " . $list[0] . "\n"; # output: a

foreach $item (@list) {
  print "item: " . $item . "\n"; # output: a, b, c
}

print scalar @list . "\n"; # output: 3; scalar method returns the length of the list.

# There you can see, are two ways to programming with perl. You can use function() as conventional or you
# can use the "book" method. As you can see above. The book method is more simple and easy to understand.

# Now let's talk about hashes in perl. Hashes are like arrays, but instead of using numbers to access the
# data, you use strings. Hashes are also called associative arrays. You can use hashes to store key/value pairs.

%fruit_color = (
  "Apple" => "Red",
  "Banana" => "Yellow",
  "Orange" => "Orange"
);
print scalar %fruit_color . "\n"; # output: 3; scalar method returns the length of the list.
print %fruit_color{"Apple"} . "\n"; # output: Red

@keys = keys %fruit_color; # Always you need to use an hash, list or array, you need to use the @ or % symbol.

foreach $item (@keys) {
  print "item: " . $item . "\n"; # output: Apple, Banana, Orange
}

# Example, you want to create a hash of names
%names = (
  "André" => "Borba",
  "Filipe" => "Fonsêca"
);

print %names{"André"} . "\n"; # output: Borba

# Now you want to create a list of ages
@ages = ("25", "26");
foreach $age (@ages) {
  print "Age: " . $age . "\n"; # output: 25, 26
}

@alphabet = ("a".."z");
foreach $letter (@alphabet) {
  print $letter . "\n";
} # .. is a range operator. It's like a for loop.

@arr = (1, 2, 3);

$size_array = @alphabet;
$max_index = $#arr;
print "Size of array: " . $size_array . "\n"; # output: 26
print "Max index: " . $max_index . "\n"; # output: 2

# As you can see, you need to use % or @ symbol to create and work with hashes and lists in Perl.

# Now let's talk about methods in arrays.
# split
$str_to_split = "Hello,World,Perl";
@split = split(",", $str_to_split);
foreach $item (@split) {
  print "item: " . $item . "\n"; # output: Hello, World, Perl
}

# join
@arr_to_join = ("Hello", "World", "Perl");
$str_joined = join(" ", @arr_to_join);
# join(" ", @arr_to_join) means: join the array with " ".
print "str_joined: " . $str_joined . "\n"; # output: Hello World Perl

# push
@arr_to_push = ("Hello", "World", "Perl");
push(@arr_to_push, "!");
# push(@arr_to_push, "!") means: add "!" to the end of the array.
$arr_to_push_joined = join(" ", @arr_to_push);
print "arr_to_push_joined: " . $arr_to_push_joined . "\n"; # output: Hello World Perl !

# pop
@arr_to_pop = ("Hello", "World", "Perl");
pop(@arr_to_pop);
# pop(@arr_to_pop) means: remove the last item from the array.
$arr_to_pop_joined = join(" ", @arr_to_pop);
print "arr_to_pop_joined: " . $arr_to_pop_joined . "\n"; # output: Hello World

# shift
@arr_to_shift = ("Hello", "World", "Perl");
shift(@arr_to_shift);
# shift(@arr_to_shift) means: remove the first item from the array.
$arr_to_shift_joined = join(" ", @arr_to_shift);
print "arr_to_shift_joined: " . $arr_to_shift_joined . "\n"; # output: World Perl

# unshift
@arr_to_unshift = ("Hello", "World", "Perl");
unshift(@arr_to_unshift, "!");
$arr_to_unshift_joined = join(" ", @arr_to_unshift);
print "arr_to_unshift_joined: " . $arr_to_unshift_joined . "\n"; # output: ! Hello World Perl

# splice
@arr_to_splice = ("Hello", "World", "Perl");
splice(@arr_to_splice, 1, 1, "!"); # splice(@array, $offset, $length, @list)
# splice(@arr_to_splice, 1, 1, "!") means: remove 1 item from index 1 and add "!".
$arr_to_splice_joined = join(" ", @arr_to_splice);
print "arr_to_splice_joined: " . $arr_to_splice_joined . "\n"; # output: Hello ! Perl

# sort
@arr_to_sort = (1, 2, 5, 9, 8, 4, 5, 0, 6, 7, 3);
@arr_to_sort = sort(@arr_to_sort); # sort(@array)
# sort(@arr_to_sort) means: sort the array.
$arr_to_sort_joined = join(" ", @arr_to_sort);
print "arr_to_sort_joined: " . $arr_to_sort_joined . "\n"; # output: 0 1 2 3 4 5 5 6 7 8 9

# reverse
@arr_to_reverse = (1, 2, 5, 9, 8, 4, 5, 0, 6, 7, 3);
@arr_to_reverse = reverse(@arr_to_reverse); # reverse(@array)
# reverse(@arr_to_reverse) means: reverse the array.
$arr_to_reverse_joined = join(" ", @arr_to_reverse);
print "arr_to_reverse_joined: " . $arr_to_reverse_joined . "\n"; # output: 3 7 6 0 5 4 8 9 5 2 1

# grep; grep method is like filter method in Ruby, JavaScript or some other languages can have.
@arr_to_grep = (1, 2, 5, 9, 8, 4, 5, 0, 6, 7, 3);
@arr_to_grep = grep($_ > 5, @arr_to_grep); # grep { block } @array
# grep($_ > 5, @arr_to_grep) means: grep the array and return the items that are greater than 5.
$arr_to_grep_joined = join(" ", @arr_to_grep);
print "arr_to_grep_joined: " . $arr_to_grep_joined . "\n"; # output: 9 8 6 7

# map
@arr_to_map = (1, 2, 5, 9, 8, 4, 5, 0, 6, 7, 3);
@arr_to_map = map($_ * 2, @arr_to_map); # map { block } @array
# map($_ * 2, @arr_to_map) means: map the array and return the items multiplied by 2.
$arr_to_map_joined = join(" ", @arr_to_map);
print "arr_to_map_joined: " . $arr_to_map_joined . "\n"; # output: 2 4 10 18 16 8 10 0 12 14 6
