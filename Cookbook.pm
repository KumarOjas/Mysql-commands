use strict;
use warnings;
use Cookbook;
my $dbh;
eval 
{
$dbh = Cookbook::connect();
print "Connected\n";
};
die "$@" if $@;
$dbh ->disconnect ();
print "Disconnected\n";

my $dbh =Cookbook::connect ();
print "connected\n";
$dbh ->disconnect ();
print "Disconnected\n"

}
