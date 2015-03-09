#!/usr/bin/env perl

use strict;
use warnings;

use lib 'auto-lib', 'lib', 'examples/lib';

use Paws;

use Data::Dumper;
my $aws = Paws->new(config => Paws::SDK::Config->new(caller => 'Paws::Net::MojoAsyncCaller') );

my $as = $aws->service('EC2', 
    region => 'us-west-1',
);

print Dumper $as->DescribeSecurityGroups->get;
