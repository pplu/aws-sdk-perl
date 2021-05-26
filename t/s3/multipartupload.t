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
    mock_dir => 't/s3/multipartupload',
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
my $upload_output = $s3->CreateMultipartUpload(
  Bucket => $bucketname,
  Key => $key,
 );

ok($upload_output->UploadId, 'S3 CreateMultipartUpload returned an UploadId');

TODO: {
  $TODO = 'May fail if S3 CreateMultipartUpload fails';
  my $part_output = $s3->UploadPart(
    Bucket => $bucketname,
    Key    => $key,
    UploadId => $upload_output->UploadId,
    PartNumber => 1,
    Body => 'X' x 1000,
   );
  ok($part_output->ETag, 'S3 UploadPart returns an ETag');

  my $parts = $s3->ListParts(
    Bucket => $bucketname,
    Key    => $key,
    UploadId =>  $upload_output->UploadId,
   );

  ok(@{ $parts->Parts }, 'S3 ListParts returns at least one Part');
  ok($parts->Parts->[0]->Size, 'S3 ListParts Part has a size');
  is($parts->Parts->[0]->PartNumber, 1, 'S3 ListParts Part has PartNumber 1');

  # Can't complete an upload without its MultipartUpload data
  dies_ok(sub { $s3->CompleteMultipartUpload(
    Bucket => $bucketname,
    Key    => 'testkey',
    UploadId => $upload_output->UploadId,
   );
  }, 'S3 CompleteMultipartUpload fails with no multipart data');
  my $complete_output = $s3->CompleteMultipartUpload(
   Bucket => $bucketname,
   Key    => 'testkey',
   UploadId => $upload_output->UploadId,
   MultipartUpload => {
     Parts => [
       {
         ETag => $parts->Parts->[0]->ETag,
         PartNumber => 1,
       },
      ],
   },
   );
  ok($complete_output->Location, 'S3 CompleteMultipartUpload returns a Location');
}

done_testing;
