#!/usr/bin/env perl

use Paws;
use Data::Printer;

my $k = Paws->service('Kinesis')->new(region => 'us-east-1');
my $r;

eval {
$r = $k->DescribeStream(StreamName => 'TestStream');
p $r;
};
if ($@) { p $@ }

$r = $k->CreateStream(StreamName => 'TestStream', ShardCount => 1);
p $r;

$r = $k->PutRecord(Data => 'This is data 1', PartitionKey => 'x1', StreamName => 'TestStream');
p $r;

$r = $k->PutRecord(Data => 'This is data 2', PartitionKey => 'x2', StreamName => 'TestStream');
p $r;

$r = $k->ListStreams;
p $r;

$r = $k->DescribeStream(StreamName => 'TestStream');
p $r;

$r = $k->GetRecords(Limit => 1000, ShardIterator => 'x1');
p $r;

$r = $k->DeleteStream(StreamName => 'TestStream');
