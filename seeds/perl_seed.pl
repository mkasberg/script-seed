#!/usr/bin/env perl
use strict;
use warnings;
use Getopt::Long;
use Pod::Usage;

# Perl script seed.
# Use this to get started quickly, and customize it to your needs.

my $type = 'flower';
my $man = 0;
my $help = 0;
my $water = 0;
GetOptions( 'help|h' => \$help, 
            'man' => \$man,
            'water|w' => \$water,
          );
pod2usage(1) if $help;
pod2usage(-exitstatus => 0, -verbose => 2) if $man;

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

=head1 NAME

sample - Using Getopt::Long and Pod::Usage

=head1 SYNOPSIS

sample [options] [file ...]

=head1 OPTIONS

=over 8

=item B<-help>
Print a brief help message and exits.

=item B<-man>
Prints the manual page and exits.

=back

=head1 DESCRIPTION

B<This program> will read the given input file(s) and do something
useful with the contents thereof.

=cut