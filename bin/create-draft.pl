#!/usr/bin/perl

use strict;
use warnings;

my $name   = $ARGV[0];
my $future = $ARGV[1];

if( !$name || $future !~ m!^\d\d?$! ) {
    die( "Synopsis: <name> <days in future>" );
}
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = gmtime(time + $future*24*3600 );

my $filename = sprintf( "_drafts/%04d-%02d-%02d-%s.markdown", $year+1900, $mon+1, $mday, $name );
my $tstamp   = sprintf( "%04d-%02d-%02d %02d:%02d:%02d +0000", $year+1900, $mon+1, $mday, $hour, $min, $sec );

if( -e $filename ) {
    die( "File exists already: $filename" );
}

my $orgContent = <<END;
---
layout: post
title:  "$name"
date:   $tstamp
categories: update
---

Go to the <a href="/products/#$name">$name</a> listing.

END

my $fh;
open($fh, '>', $filename) or die "Could not open file '$filename' $!";
print $fh $orgContent;
close $fh;

system( "vi $filename" );

1;

