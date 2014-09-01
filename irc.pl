#!/usr/bin/perl 

use IO::Socket; 
use Getopt::Long qw(GetOptions);

$host = "irc.ircforex.com";
$nick = "ThinkPL";
$chan = "#forex";

GetOptions(\my %opt, 'host=s', 'nick=s', 'chan=s');
$host = $opt{host} if $opt{host};
$nick = $opt{nick} if $opt{nick};
$chan = $opt{chan} if $opt{chan};
print "$nick => $host $chan\n";

$sock = new IO::Socket::INET( PeerAddr => "$host", PeerPort => 6667, Proto => 'tcp') || die "ERROR: Unable to create socket $!"; 

print $sock "NICK $nick\r\n"; 
print $sock "USER $nick localhost $host :$nick\r\n"; 
print $sock "JOIN $chan\r\n"; 

while($line = <$sock>) { 
   chop $line; 
   if ($line =~ /^PING(.*)$/i) { 
   # We must respond to PING or get disconnected. 
   print $sock "PONG $1\r\n"; 
   } elsif ($line =~ /\s(JOIN|PART|QUIT|KICK|MODE|NOTICE)\s/) {
   # discard this message
   } else { 
   # discard sender info
   # $line =~ s/:(.*)://;
   $line =~ s/\!(.*)\s:/: /;
   # Print line.
   print "$line\n"; 
   }
}

close($sock);
