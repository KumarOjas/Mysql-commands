use strict;
use warnings;
use DBI;
mu $db_name="cookbook";
my $host_name="localhost";
my $user_name="cbuser";
my $password="cbpass";
my $port_num=undef;
my $socket_file =undef;
#Establish a connection to the cookbook database ,returning a database
#handle Raise an exception if the connection cannot be established.
sub connect 
{
my $dn = "DBI:mysql:host=$host_name";
my $conn_attrs ={PrintError =>0 ,RaiseError =>1,AutoCommit=>1};
$dn .="database=$db_name" if defined ($db_name);
$dn .="mysql_socket=$socket_file" if defined ($socket_file);
$dn .="port=$port_num" if defined ($port_num);
return DBI -> connect($dn,$user_name,$password,$conn_attrs);
};
#return true
$dbh= Cookbook ::connect ();




