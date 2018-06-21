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
use TestRequestCaller;

Paws->default_config->caller(TestRequestCaller->new);
Paws->default_config->credentials('Test::CustomCredentials');

my $bucketname = 'shadowcatjesstest';
my $s3 = Paws->service('S3', region => 'us-west-2');

my %md5_methods = (
  'PutBucketCors' => {
    Bucket => $bucketname,    
    CORSConfiguration => {
      CORSRules => [
        {
          'AllowedMethods' => ['POST'],
          'AllowedOrigins' => ['http://shadowcat.co.uk'],
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
  'PutBucketReplication' => {
    Bucket => $bucketname,
    ReplicationConfiguration => {
      Rules => [
        {
          Status => 'Enabled',
          Prefix => 'MyPrefix',
          Destination => {
            Bucket => 'MyBucketName',
           },
         },
       ],
      Role => 'MyRole',
     },
  },
  'PutObjectTagging' => {
    Bucket => $bucketname,
    Key => 'SomeKey',
    Tagging => {
      TagSet => [
        {
          Key => 'Foo',
          Value => 'Bar',
         },
       ],
     },
  },
  'CreateBucket' => {
    Bucket => $bucketname,
    CreateBucketConfiguration => {
      LocationConstraint => 'EU',
     },
  },
  'PutBucketAccelerateConfiguration' => {
    Bucket => $bucketname,
    AccelerateConfiguration => {
      Status => 'Enabled',    # values: Enabled, Suspended; OPTIONAL
    },
  },
  'PutBucketAcl' => {
    Bucket => $bucketname,
    ACL => 'private',
  },
  'PutBucketEncryption' => {
    Bucket => $bucketname,
    ServerSideEncryptionConfiguration => {
      Rules => [
        {
         },
       ],
     },
  },
  'PutBucketInventoryConfiguration' => {
    Bucket => $bucketname,
    Id     => 'MyInventoryId',
    InventoryConfiguration => {
      Destination => {
        S3BucketDestination => {
          Bucket => 'Stuff',
          Format => 'CSV',
        },
      },
      Id => 'SomeId',
      IncludedObjectVersions => 'All',
      IsEnabled  => 1,
      Schedule => {
        Frequency => 'Daily',
       },
     },
  },
  'PutBucketLogging' => {
    Bucket => $bucketname,
    BucketLoggingStatus => {
     },
  },
  'PutBucketMetricsConfiguration' => {
    Bucket => $bucketname,
    Id => 'MyId',
    MetricsConfiguration => {
      Id => 'OtherId',
     },
  },
  'PutBucketNotification' => {
    Bucket => $bucketname,
    NotificationConfiguration => {
     },
  },
  'PutBucketPolicy' => {
    Bucket => $bucketname,
    Policy => 'SomePolicy',
  },
  'PutBucketRequestPayment' => {
    Bucket => $bucketname,
    RequestPaymentConfiguration => {
      Payer => 'Requester',
     },
  },
  'PutBucketVersioning' => {
    Bucket => $bucketname,
    VersioningConfiguration => {
      MFADelete => 'Enabled',
      Status    => 'Enabled',
     },
  },
  'PutBucketWebsite' => {
    Bucket => $bucketname,
    WebsiteConfiguration => {
     },
  },
  'PutObject' => {
    Bucket => $bucketname,
    Key => 'MyKey',
  },
  'PutObjectTagging' => {
    Bucket => $bucketname,
    Key => 'MyKey',
    Tagging => {
      TagSet => [
        {
          Key => 'SomeKey',
          Value => 'Val',
         }
       ],
     },
  },
  'UploadPart' => {
    Bucket => $bucketname,
    Key => 'MyKey',
    PartNumber => 1,
    UploadId => 'MyMultipartUploadId',
   }
 );

# content md5
foreach my $method (qw/DeleteObjects RestoreObject PutBucketLifecycle PutBucketTagging PutBucketCors PutObjectTagging PutBucketReplication/) {
  my $response;
  eval { $response = $s3->$method(%{ $md5_methods{$method} });
  } or do {
    warn qq[Error creating object: $@];
  };

## The HTTP headers should contain a Content-MD5 header
  ok($response->header('Content-MD5'), "S3 $method header contains Content-MD5 header");
}

# content length: Length of the message (without the headers)
# according to RFC 2616. This header is required for PUTs and
# operations that load XML, such as logging and ACLs.
foreach my $method (qw/CreateBucket PutBucketAccelerateConfiguration PutBucketAcl PutBucketEncryption PutBucketInventoryConfiguration PutBucketLogging PutBucketMetricsConfiguration PutBucketNotification PutBucketPolicy PutBucketReplication PutBucketRequestPayment PutBucketVersioning PutBucketWebsite PutBucketLifecycle PutBucketTagging PutBucketCors PutObject PutObjectTagging DeleteObjects UploadPart/) {
  my $response;
  eval { $response = $s3->$method(%{ $md5_methods{$method} });
  } or do {
    warn qq[Error creating object: $@];
  };

## The HTTP headers should contain a Content-MD5 header
  ok($response->header('Content-Length'), "S3 $method header contains Content-Length header");
}

done_testing;
