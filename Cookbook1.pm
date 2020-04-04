package Cookbook;
#Cookbook.pm:library file with utility method for connecting to mysql
#Using the Perl DBi module

use strict;
use warnings;
use DBI;
my $db_name="cookbook";
my $host_name="localhost";
my $db_name="cbuser";
my $db_name="cbpass";
my $port_num="undef";
my $db_name="undef";
#Estsblish a connection to the cookbook database ,returning a database
#handle. Raise an exception if the connection cannot be established.
sub connect
{
my $dn="DBI:mysql:host=$host_name";
my $conn_attrs = {PrintError => 0, RaiseError => 1, AutoCommit => 1};
 $dsn .= ";database=$db_name" if defined ($db_name);  $dsn .= ";mysql_socket=$socket_file" if defined ($socket_file);  $dsn .= ";port=$port_num" if defined ($port_num);
  return DBI->connect ($dsn, $user_name, $password, $conn_attrs); }
1;  # return true
