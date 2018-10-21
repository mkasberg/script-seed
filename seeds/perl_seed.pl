#!/usr/bin/env perl
use strict;
use warnings;
use Getopt::Long;
use Pod::Usage;

# Perl script seed.
# Use this to get started quickly, and customize it to your needs.

my $help = 0;
my $water = 0;
my $type = 'flower';
GetOptions('help|h' => \$help,
           'water|w' => \$water,
           'type|t=s' => \$type
);
pod2usage(0) if $help;

# Write your code below
if ($water){
  water_the_plant($type) ;
}
else {
  plant_a_seed($type);
}

sub plant_a_seed {
  my $seed = shift;
  print "You planted a $seed seed!\n";
}

sub water_the_plant {
  my $plant = shift;
  print "You watered the $plant.\n";
}

# Write your perldoc below the __END__
__END__
=head1 SYNOPSIS

perl_seed.pl [options]

=head1 OPTIONS

=item B<-h|-help>
Print a brief help message and exit.

=item B<-w|-water>
Water the plant.

=item B<-t|-type>
Specify the type of plant.
