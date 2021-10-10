#!/usr/bin/env perl
use strict;
use warnings;
use Getopt::Long;
use Pod::Usage;

# This is a Perl script seed.
# Use it as a template for your own Perl script.

my $help = 0;
my $name = 'world';
GetOptions('help|h' => \$help,
           'name|n=s' => \$name
);
pod2usage(0) if $help;

# Write your code below
print "Hello $name!\n\n";
print "You ran the Perl seed script!\n";


# Write your perldoc below the __END__
__END__
=head1 SYNOPSIS

perl_seed.pl [options]

=head1 OPTIONS

=item B<-h|-help>
Print a brief help message and exit.

=item B<-n|-name>
Specify the user's name.
