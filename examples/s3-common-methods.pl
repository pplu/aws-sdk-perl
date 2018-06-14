#!/usr/bin/env perl

use strict;
use warnings;
use v5.10;

use lib 'auto-lib', 'lib';
use English qw(-no_match_vars);

use Data::Dumper;
use Data::Printer;
use Carp;

use Paws;

my $service    = 'S3';
# my $region     = 'us-east-1';
my $region     = 'us-west-2';
my $bucketname = 'shadowcatjesstest';
my $test_dir   = 'uploads/test_';


my $response;

my $s3 = Paws->service($service, 
    region => $region,
);

## DeleteBucket
#
{
  eval {
    $response = $s3->DeleteBucket(
        Bucket => $bucketname
    );
    p $response;
    1;
  } or do {
    carp qq[Error deleting bucket [$bucketname]:  $EVAL_ERROR];
  };
}

## CreateBucket
# 
{
  eval {
    $response = $s3->CreateBucket(
      Bucket => $bucketname,
      CreateBucketConfiguration => {
        LocationConstraint => 'us-west-2', 
      },
    );
    p $response;
    1;
  } or do {
    carp qq[Error creating bucket [$bucketname]:  $EVAL_ERROR];
  };
}

## DeleteObject
#
{
    $response = $s3->DeleteObject(
        Bucket => $bucketname,
        Key    => 'doesnotexist'
    );
    p $response;

    $response = $s3->DeleteObject(
        Bucket => $bucketname,
        Key    => 'uploads/test/foo.txt'
    );
    p $response;
}

## PutObject
#
{
    eval {
      $response = $s3->PutObject(
          Bucket => $bucketname,
          Key    => 'uploads/test/foo.txt',
          Body   => 'foobar'
      );
      p $response;
      1;
    } or do {
        carp qq[1. Error putting object [uploads/test/foo.txt]:  $EVAL_ERROR];
    };

    eval {
        $response = $s3->PutObject(
            Bucket => $bucketname,
            Key    => 'uploads/test/empty.txt',
            Body   => ''
        );
        p $response;
        1;
    } or do {
        carp qq[2. Error putting object [uploads/test/empty.txt]:  $EVAL_ERROR];
    };
    eval {
        $response = $s3->PutObject(
            Bucket => $bucketname,
            Key    => 'uploads/test/phantom.txt'
        );
        p $response;
        1;
    } or do {
        carp qq[3. Error putting object [uploads/test/phantom.txt]:  $EVAL_ERROR];
    };


}

## GetObject
#
{   

    $response = $s3->GetObject(
        Bucket => $bucketname,
        Key    => 'uploads/test/foo.txt'
    );

    p $response;

    eval {
        $response = $s3->GetObject(
            Bucket => $bucketname,
            Key    => 'uploads/doesnotexist'
        );
        p $response;
        1;
    } or do {
        carp qq[Error getting object [uploads/doesnotexist]:  $EVAL_ERROR];
    };

}

## CopyObject
#
{   

  eval {
    $response = $s3->CopyObject(
      Bucket => $bucketname,
      Key    => 'uploads/test/bar.txt',
      CopySource => qq[$bucketname/uploads/test/foo.txt],
    );
    carp Dumper($response);
    p $response;
    1;
  } or do {
    carp qq[1. Error copying object [uploads/test/bar.txt]: $EVAL_ERROR];
  };

  eval {
    $response = $s3->CopyObject(
      Bucket => $bucketname,
      Key    => 'uploads/test/bar.txt',
      CopySource => qq[$bucketname/doesnotexist],
    );
    p $response;
    1;
  } or do {
    carp qq[2. Error copying object [$bucketname/doesnotexist]: $EVAL_ERROR];
  };

}

## ListObjects
#
{

  $response = $s3->PutObject(
    Bucket => $bucketname,
    Key    => 'uploads/test_1.txt',
    Body   => 'test_1'
  );

  $response = $s3->ListObjects(
    Bucket => $bucketname
  );
  p $response;

  $response = $s3->ListObjects(
    Bucket => $bucketname, Prefix => $test_dir
  );
  p $response;

}

## Multipart Uploads to S3
#
{

  my $object_key = q[uploads/multipart_test.txt];

  ## CreateMultipartUpload
  #
  $response = $s3->CreateMultipartUpload(
    Bucket => $bucketname,
    Key    => $object_key
  );
  
  p $response;

  my $upload_id = $response->{UploadId};

  ## UploadPart
  #
  my $response_1 = $s3->UploadPart(
    Bucket     => $bucketname,
    Key        => $object_key,
    PartNumber => 1,
    UploadId   => $upload_id,
    Body       => q[part1]
  );

  # NB!!! Multipart uploads of more than one part have minimum size restrictions on all but the final part.
  # The minimum size for each part is 5MB but the final part can be of any size. This is all explained here:
  # http://docs.aws.amazon.com/AmazonS3/latest/API/mpUploadComplete.html - See `EntityTooSmall` error

  # my $response_2 = $s3->UploadPart(
  #   Bucket     => $bucketname,
  #   Key        => $object_key,
  #   PartNumber => 2,
  #   UploadId   => $upload_id,
  #   Body       => q[part2]
  # );

  p $response_1;

  use Paws::S3::CompletedPart;
  use Paws::S3::CompletedMultipartUpload;

  my $etag_1 = $response_1->ETag();
  $etag_1 =~ s/"//gsmix;
  # my $etag_2 = $response_2->ETag();
  # $etag_2 =~ s/"//gsmix;

  my $completed_part_1 = Paws::S3::CompletedPart->new(PartNumber => 1, ETag => $etag_1 );
  # my $completed_part_2 = Paws::S3::CompletedPart->new(PartNumber => 2, ETag => $etag_2 );
  my $all_completed_parts = [$completed_part_1];
  # my $all_completed_parts = [$completed_part_1, $completed_part_2];
  my $completed_multipart_upload = Paws::S3::CompletedMultipartUpload->new(Parts => $all_completed_parts);


  ## CompleteMultipartUpload
  #
  eval {
    $response = $s3->CompleteMultipartUpload(
      Bucket     => $bucketname,
      Key        => $object_key,
      UploadId   => $upload_id,
      MultipartUpload => $completed_multipart_upload,
    );
    carp Dumper($response);
    p $response;
    1;
  } or do {
    carp qq[2. Error completing MultipartUpload: $EVAL_ERROR];
  };

  ## ListParts
  #
  $response = $s3->ListParts(
    Bucket     => $bucketname,
    Key        => $object_key,
    UploadId   => $upload_id,
    PartNumberMarker => 1,
  );

  ## ListMultipartUploads
  #
  my $list_response = $s3->ListMultipartUploads(
    Bucket     => $bucketname,
  );

  p $list_response;

  my $next_upload_id = $list_response->NextUploadIdMarker;

  do {
    carp qq[WARNING!! - Aborting stale MultipartUpload ] . $list_response->NextUploadIdMarker;

    ## AbortMultipartUpload
    #
    my $abort_response = $s3->AbortMultipartUpload(
      Bucket     => $bucketname,
      Key        => $list_response->NextKeyMarker,
      UploadId   => $list_response->NextUploadIdMarker,
    );
    
    p $abort_response;

    $list_response = $s3->ListMultipartUploads(
      Bucket     => $bucketname,
    );

    eval {
      $next_upload_id = $list_response->NextUploadIdMarker;
      1;
    } or do {
      $next_upload_id = undef;
    };
  } while ( $next_upload_id );


}
