#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Test::Exception;
use Paws;
use Paws::Crawler;
use Paws::Net::MockCaller;
use Paws::API::ServiceToClass;

my $paws = Paws->new(config => {
  credentials => 'Test::CustomCredentials'
});

sub mock_caller_for_test {
  my $test_name = shift;

  my $dir = "t/26_paginators/$test_name";
  die "Can't find test dir $dir" if (not -d $dir);

  return Paws::Net::MockCaller->new(
    mock_mode => 'REPLAY',
    mock_dir => $dir,
  );
}


{ # iterate without callback
  my $s3 = $paws->service('S3', region => 'eu-west-1', caller => mock_caller_for_test('s3-getallobjects'));
  my $response = $s3->ListAllObjects(
    MaxKeys => '50',
    Bucket => 'paws-test-paginators-2'
  );
  cmp_ok(@{ $response->Contents }, '==', 200, '200 keys in the bucket');
  my %keys;
  foreach my $item (@{ $response->Contents }){
    $keys{ $item->Key } ++;
  }
  cmp_ok(scalar(keys %keys), '==', 200, 'Got 200 different keys');
}

{ # iterate with callback
  my $s3 = $paws->service('S3', region => 'eu-west-1', caller => mock_caller_for_test('s3-getallobjects'));
  my $calls = 0;
  my %keys;

  my $response = $s3->ListAllObjects(
    sub { $calls++; $keys{ $_[0]->Key }++; },
    MaxKeys => '50',
    Bucket => 'paws-test-paginators-2'
  );
  cmp_ok($calls, '==', 200, '200 keys in the bucket with callback');
  cmp_ok(scalar(keys %keys), '==', 200, 'Got 200 different keys');
}

{ # iterate without callback
  my $s3 = $paws->service('S3', region => 'eu-west-1', caller => mock_caller_for_test('s3-getallobjects-with-prefix'));
  my $response = $s3->ListAllObjects(
    MaxKeys => '50',
    Bucket => 'paws-test-paginators-2',
    Prefix => 'prefix1/'
  );
  cmp_ok(@{ $response->Contents }, '==', 100, '100 keys with prefix1');
  my %keys;
  foreach my $item (@{ $response->Contents }){
    $keys{ $item->Key } ++;
  }
  cmp_ok(scalar(keys %keys), '==', 100, 'Got 100 different keys');
}

{ # iterate with callback
  my $s3 = $paws->service('S3', region => 'eu-west-1', caller => mock_caller_for_test('s3-getallobjects-with-prefix'));
  my $calls = 0;
  my %keys;

  my $response = $s3->ListAllObjects(
    sub { $calls++; $keys{ $_[0]->Key }++; },
    MaxKeys => '50',
    Bucket => 'paws-test-paginators-2',
    Prefix => 'prefix1/'
  );
  cmp_ok($calls, '==', 100, '100 keys with prefix1 with callback');
  cmp_ok(scalar(keys %keys), '==', 100, 'Got 100 different keys');
}



done_testing;
