#!/usr/bin/env perl

use v5.10;
use strict;
use warnings;

use lib 'auto-lib', 'lib';

use Paws;

die "Usage $0 Text to speak" if (not @ARGV);

my $text = join ' ', @ARGV;

my $polly = Paws->service('Polly', region => 'us-west-2');

my $res = $polly->SynthesizeSpeech(
    VoiceId => 'Ines',
    Text => $text,
    OutputFormat => 'mp3',
);

say "Content-type: " . $res->ContentType;
say "Chars: " . $res->RequestCharacters;

my $mp3;
if (-e '/usr/bin/mpg123') {
  open($mp3, '|-', '/usr/bin/mpg123 -');
} else {
  open($mp3, '>', "out.mp3");
}

binmode($mp3);
print $mp3 $res->AudioStream;
close($mp3);

