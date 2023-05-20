use strict;
use warnings;

sub convert_days_to_seconds {
  my $days = @_;

  return $days * 24 * 60 * 60;
}

my $days = 7;
my $days_in_seconds = convert_days_to_seconds(7); # output: 4

print $days_in_seconds;
