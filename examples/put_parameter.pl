#!/usr/bin/env perl

use strict;
use warnings;

use lib 'auto-lib', 'lib';
use Data::Dumper;
use Data::Printer;

use Paws;

my $result;

my $ssm = Paws->service('SSM',
  region => 'eu-west-1',
);

$result = $ssm->PutParameter(
  Description => 'DB Host',
  Name => '/prod/DBHOST',
  Type => 'String',
  Value => 'host1.example.com',
  Overwrite => 1,
);

$result = $ssm->PutParameter(
  Description => 'DB Host',
  Name => '/prod/DBPASS',
  Type => 'SecureString',
  Value => 'prodpass',
  Overwrite => 1,
);

$result = $ssm->PutParameter(
  Description => 'DB Host',
  Name => '/pre/DBHOST',
  Type => 'String',
  Value => 'prehost.example.com',
  Overwrite => 1,
);

$result = $ssm->PutParameter(
  Description => 'DB Host',
  Name => '/pre/DBPASS',
  Type => 'SecureString',
  Value => 'prepass',
  Overwrite => 1,
);



p $result;
