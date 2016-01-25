#!/usr/bin/env perl

use lib 'auto-lib', 'lib';

use strict;
use warnings;
use Paws;

use Data::Printer;

my $table_name = 'Emails';

my $d = Paws->service('DynamoDB', 
  region => 'eu-west-1', 
#  caller => TestMakerCaller->new,
);
my $r;

$r = $d->ListTables;
p $r;

if (not grep { $_ eq $table_name } @{ $r->TableNames }){
  $r = $d->CreateTable(
    AttributeDefinitions => [ 
      { AttributeName => 'email', AttributeType => 'S' },
#      { AttributeName => 'count', AttributeType => 'N' },
  #    { AttributeName => 'number', AttributeType => 'N' },
    ],
    KeySchema => [
      { AttributeName => 'email', KeyType => 'HASH' },
  #    { AttributeName => 'count', KeyType => 'RANGE' },
    ],
    ProvisionedThroughput => {
      ReadCapacityUnits => 1,
      WriteCapacityUnits => 1
    },
    TableName => $table_name,
  );
  p $r;

  # Let dynamodb create the table...
  sleep 15;
}

$r = $d->Scan(TableName => $table_name);
p $r;

$d->PutItem(
  TableName => $table_name,
  Item => {
    email => { S => 'e1@test.com' },
    count => { N => '33' },
  }
);

$d->PutItem(
  TableName => $table_name,
  Item => {
    email => { S => 'e2@test.com' },
    count => { N => '45' },
  }
);

$r = $d->Scan(TableName => $table_name);

my $i = $r->Items->[0];
p $i;

$r = $d->GetItem(
  TableName => $table_name,
  ConsistentRead => 1,
  Key => {
    email => { S => 'e1@test.com' },
    count => { N => '33' },
  }
);

p $r->Item;

$r = $d->BatchGetItem(
  RequestItems => {
    $table_name => { Keys => [ { email => { S => 'e1@test.com' } }, { email => { S => 'e2@test.com' } } ] },
  },
  ReturnConsumedCapacity => 'TOTAL'
);

p $r;
p $r->ConsumedCapacity;
p $r->Responses;

#$d->DeleteTable(TableName => $table_name);
