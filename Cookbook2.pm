use strict;
use warnings;
use Cookbook;
my $dbh;
eval
{
$dbh =Cookbook :: connect ();
print "Connected\n";
};
die "$@" if $@;
$dbh -> diusconnect ();
print "Disconnect\n";
}

my $dbh =Cookbook :: connect();
print "Connected\n ";
$dbh ->disconnect();
print "Disconnectwd\n";







