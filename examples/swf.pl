#!/usr/bin/env perl

use strict;
use warnings;

use lib 'auto-lib', 'lib';
use Data::Dumper;
use Data::Printer;

use AWS::SimpleWorkflow;

my $result;

my $swf = AWS::SimpleWorkflow->new(
  region => 'eu-west-1',
);

$result = $swf->ListDomains(registrationStatus => 'REGISTERED');
print Dumper($result);
p $result;
