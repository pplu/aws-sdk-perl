#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use English qw(-no-match-vars);
use Data::Printer;
use Data::Dumper;
use Carp;
use Test::More;
use URI::Escape;

use Paws;
use Paws::Net::MockCaller;

my $paws = Paws->new(config => {
  caller => Paws::Net::MockCaller->new(
    mock_dir => 't/s3/content_headers',
    mock_mode => 'REPLAY',
#    mock_mode => 'RECORD',
  ),
#  credentials => 'Test::CustomCredentials'
});

my $bucketname = 'shadowcatjesstest';
my $s3 = $paws->service('S3', region => 'us-west-2');

my %md5_methods = (
  'PutBucketCors' => {
    Bucket => $bucketname,    
    CORSConfiguration => {
      CORSRules => [
        {
          'AllowedMethods' => ['POST'],
          'AllowedOrigins' => ['http://shadoecat.co.uk'],
        },
       ],
    }
  },
  'PutBucketLifecycle' => {
    Bucket => $bucketname,
    LifecycleConfiguration => {
      Rules => [
        {
          Status => 'Enabled',
          Filter => {
           },
          }
       ] 
     },
    },
  'PutBucketTagging' => {
    Bucket => $bucketname,
    Tagging => {
      TagSet => [
        {
          Key => 'Foo',
          Value => 'Bar',
        },
       ],
     },
   },
  'DeleteObjects' => {
    Bucket => $bucketname,
    Delete => {
      Objects => [
        {
          Key => 'Foo',
         },
       ],
     },
   },
  'RestoreObject' => {
    Bucket => $bucketname,
    Key => 'Foo',
   },
 );

foreach my $method (qw/DeleteObjects RestoreObject PutBucketLifecycle PutBucketTagging PutBucketCors/) {
  my $response;
  eval { $response = $s3->$method(%{ $md5_methods{$method} });
  } or do {
    warn qq[Error creating object: $@];
  };

## The HTTP headers should contain a Content-MD5 header
  ok($s3->caller->actual_request->header('Content-MD5'), "S3 $method header contains Content-MD5");
}

done_testing;
