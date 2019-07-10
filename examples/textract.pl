#!/usr/bin/env perl

use v5.10;
use strict;
use warnings;

use Paws;
use Path::Class qw/file/;
use MIME::Base64;

my $textract = Paws->service('Textract', region => 'eu-west-1');

my $f = file $ARGV[0];

my $r = $textract->AnalyzeDocument(
  FeatureTypes => [ 'TABLES' ],
  Document => { Bytes => encode_base64($f->slurp, '') }
);

say $_ for (map { $_->Text  } grep { $_->BlockType eq 'LINE' } @{ $r->Blocks });

