#!/usr/bin/perl

use strict;
use warnings;

my $name = $ARGV[0];

unless( $name ) {
    die( "Provide name for post" );
}
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = gmtime(time);

my $filename = sprintf( "_posts/%04d-%02d-%02d-%s.markdown", $year+1900, $mon+1, $mday, $name );
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

open($fh, '<', $filename) or die "Could not open file '$filename' $!";
my $newContent = do { local($/); <$fh> };
close($fh);

if( $orgContent ne $newContent ) {
    print STDERR "Committing unless you interrupt within 3sec...\n";
    sleep 3;
    system( "git add $filename" );
    system( "git commit -m 'added post for $name'" );
    system( "git push" );
} else {
    print STDERR "No changes, aborting...\n";
}

1;

