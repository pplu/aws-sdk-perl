#!/usr/bin/env perl

use v5.20;
use strict;
use warnings;

use Paws;
use Data::Dumper;
use Path::Class qw/file/;
use MIME::Base64;

my $f = file $ARGV[0];

my $k = Paws->service('Rekognition', region => 'eu-west-1');

my $r;
eval {
  $r = $k->DetectFaces(Attributes => [ 'ALL' ], Image => { Bytes => encode_base64($f->slurp) });
};
if ($@) { p $@ }

foreach my $face (@{ $r->FaceDetails }) {
  print Dumper($face);
}
