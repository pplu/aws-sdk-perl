#!/usr/bin/env perl

use Paws;

use Data::Printer;

my $d = Paws->service('DynamoDB')->new( region => 'eu-west-1' );
my $r;

$r = $d->ListTables;
p $r;

$r = $d->CreateTable(
  AttributeDefinitions => [ 
    { AttributeName => 'email', AttributeType => 'S' },
    { AttributeName => 'count', AttributeType => 'N' },
#    { AttributeName => 'number', AttributeType => 'N' },
  ],
  KeySchema => [
    { AttributeName => 'email', KeyType => 'HASH' },
    { AttributeName => 'count', KeyType => 'RANGE' },
  ],
  ProvisionedThroughput => {
    ReadCapacityUnits => 1,
    WriteCapacityUnits => 1
  },
  TableName => 'Emails',
);

p $r;

$d->DeleteTable(TableName => 'Emails');
