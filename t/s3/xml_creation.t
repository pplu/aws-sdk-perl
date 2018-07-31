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
  'SelectObjectContent' => {
    Bucket => $bucketname,
    Key => 'MyKey',
    Expression => 'Select * from S3Object',
    ExpressionType => 'SQL',
    InputSerialization => {
     },
    OutputSerialization => {
     },
   },
 );

my %xml_results = (
  PutBucketLifecycle => '<LifecycleConfiguration><Rule><Status>Enabled</Status><Filter></Filter></Rule></LifecycleConfiguration>',
  SelectObjectContent => '<SelectRequest><Expression>Select * from S3Object</Expression><ExpressionType>SQL</ExpressionType><InputSerialization></InputSerialization><OutputSerialization></OutputSerialization></SelectRequest>',
 );

# content length: Length of the message (without the headers)
# according to RFC 2616. This header is required for PUTs and
# operations that load XML, such as logging and ACLs.
foreach my $method (qw/PutBucketLifecycle SelectObjectContent/) {
  my $request;
  diag $method;
  eval { $request = $s3->$method(%{ $md5_methods{$method} });
  } or do {
    diag qq[Error creating object: $@];
  };

 TODO: {
    local $TODO = 'Remove after fixing XML generation';
    ## The HTTP headers should contain a Content-MD5 header
    is($request->content(), $xml_results{$method}, "S3 $method XML is ok")
        if $xml_results{$method};
  };
}

done_testing;
