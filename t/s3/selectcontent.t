#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use English qw(-no-match-vars);
use Carp;
use Test::More;
use Test::Exception;
use URI::Escape;

use Paws;
use Paws::Net::MockCaller;

my $paws = Paws->new(config => {
  caller => Paws::Net::MockCaller->new(
    mock_dir => 't/s3/selectcontent',
    mock_mode => 'REPLAY',
  ),
  credentials => 'Test::CustomCredentials'
});

my $s3 = $paws->service('S3', region => 'us-west-2'); 

my $bucketname = 'shadowcatjesstest2';
my $lb = $s3->ListBuckets();

if(!grep { $_->Name eq $bucketname } (@{$lb->Buckets}) ) {
    my $cb = $s3->CreateBucket(
        Bucket => $bucketname,
        CreateBucketConfiguration => {
            LocationConstraint => 'us-west-2',
        }
    );
}

my $key = 'testkey';
# create object to test with if not already present:
# my $objects = $s3->ListObjects(
#     Bucket => $bucketname,
    

my $sel = $s3->SelectObjectContent(
    Bucket => $bucketname,
    Key => $key,
    Expression => 'Select * from S3Object',
    ExpressionType => 'SQL',
    InputSerialization => {
        JSON => {
            Type => 'DOCUMENT',
        },
    },
    OutputSerialization => {
        JSON => {
          RecordDelimiter => ';',
        },
    },
);

ok($sel->Payload, 'SelectObjectContent has a payload');
use Data::Dumper;
# diag(Dumper($sel->Payload));

ok($sel->Payload->Cont, 'Payload has a Cont (ContinuationEvent)');
diag(Dumper($sel->Payload->Cont));

done_testing;
