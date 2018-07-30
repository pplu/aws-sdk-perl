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
    mock_dir => 't/s3/multipartupload',
    mock_mode => 'REPLAY',
  ),
#  credentials => 'Test::CustomCredentials'
});

my $s3 = $paws->service('S3', region => 'us-west-2'); #, endpoint => 'http://localhost:4572');

my $upload_output = $s3->CreateMultipartUpload(
  Bucket => 'shadowcatjesstest',
  Key => 'testkey',
 );


ok($upload_output->UploadId, 'S3 CreateMultipartUpload returned an UploadId');

done_testing;

