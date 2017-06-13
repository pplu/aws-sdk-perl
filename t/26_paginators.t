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
  cmp_ok(@{ $response->Contents }, '==', 200, 'listallobjects: 200 keys in the bucket');
  my %keys;
  foreach my $item (@{ $response->Contents }){
    $keys{ $item->Key } ++;
  }
  cmp_ok(scalar(keys %keys), '==', 200, 'listallobjects got 200 different keys');
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
  cmp_ok($calls, '==', 200, 'listallobjects w/callback: 200 keys in the bucket with callback');
  cmp_ok(scalar(keys %keys), '==', 200, 'listallobjects w/callback: got 200 different keys');
}

{ # iterate over prefix without callback
  my $s3 = $paws->service('S3', region => 'eu-west-1', caller => mock_caller_for_test('s3-getallobjects-with-prefix'));
  my $response = $s3->ListAllObjects(
    MaxKeys => '50',
    Bucket => 'paws-test-paginators-2',
    Prefix => 'prefix1/'
  );
  cmp_ok(@{ $response->Contents }, '==', 100, 'listallobjects: 100 keys with prefix1');
  my %keys;
  foreach my $item (@{ $response->Contents }){
    $keys{ $item->Key } ++;
  }
  cmp_ok(scalar(keys %keys), '==', 100, 'listallobjects: got 100 different keys');
}

{ # iterate over prefix with callback
  my $s3 = $paws->service('S3', region => 'eu-west-1', caller => mock_caller_for_test('s3-getallobjects-with-prefix'));
  my $calls = 0;
  my %keys;

  my $response = $s3->ListAllObjects(
    sub { $calls++; $keys{ $_[0]->Key }++; },
    MaxKeys => '50',
    Bucket => 'paws-test-paginators-2',
    Prefix => 'prefix1/'
  );
  cmp_ok($calls, '==', 100, 'listallobjects w/callback: 100 keys with prefix1');
  cmp_ok(scalar(keys %keys), '==', 100, 'listallobjects w/callback: got 100 different keys');
}

{ # iterate without callback
  my $s3 = $paws->service('S3', region => 'eu-west-1', caller => mock_caller_for_test('s3-getallobjectsv2'));
  my $response = $s3->ListAllObjectsV2(
    MaxKeys => '50',
    Bucket => 'paws-test-paginators-2'
  );
  cmp_ok(@{ $response->Contents }, '==', 200, 'listallobjectsv2: 200 keys in the bucket');
  my %keys;
  foreach my $item (@{ $response->Contents }){
    $keys{ $item->Key } ++;
  }
  cmp_ok(scalar(keys %keys), '==', 200, 'listallobjectsv2: got 200 different keys');
}

{ # iterate with callback
  my $s3 = $paws->service('S3', region => 'eu-west-1', caller => mock_caller_for_test('s3-getallobjectsv2'));
  my $calls = 0;
  my %keys;

  my $response = $s3->ListAllObjectsV2(
    sub { $calls++; $keys{ $_[0]->Key }++; },
    MaxKeys => '50',
    Bucket => 'paws-test-paginators-2'
  );
  cmp_ok($calls, '==', 200, 'listallobjectsv2 w/callback: 200 keys in the bucket with callback');
  cmp_ok(scalar(keys %keys), '==', 200, 'listallobjectsv2 w/callback: got 200 different keys');
}

{ # iterate over prefix without callback
  my $s3 = $paws->service('S3', region => 'eu-west-1', caller => mock_caller_for_test('s3-getallobjectsv2-with-prefix'));
  my $response = $s3->ListAllObjectsV2(
    MaxKeys => '50',
    Bucket => 'paws-test-paginators-2',
    Prefix => 'prefix1/'
  );
  cmp_ok(@{ $response->Contents }, '==', 100, 'listallobjectsv2: 100 keys with prefix1');
  my %keys;
  foreach my $item (@{ $response->Contents }){
    $keys{ $item->Key } ++;
  }
  cmp_ok(scalar(keys %keys), '==', 100, 'listallobjectsv2: got 100 different keys');
}

{ # iterate over prefix with callback
  my $s3 = $paws->service('S3', region => 'eu-west-1', caller => mock_caller_for_test('s3-getallobjectsv2-with-prefix'));
  my $calls = 0;
  my %keys;

  my $response = $s3->ListAllObjectsV2(
    sub { $calls++; $keys{ $_[0]->Key }++; },
    MaxKeys => '50',
    Bucket => 'paws-test-paginators-2',
    Prefix => 'prefix1/'
  );
  cmp_ok($calls, '==', 100, 'listallobjectsv2 w/callback: 100 keys with prefix1');
  cmp_ok(scalar(keys %keys), '==', 100, 'listallobjectsv2 w/callback: got 100 different keys');
}

{
  my $elb = $paws->service('ELB', region => 'eu-west-1', caller => mock_caller_for_test('elb-describeallloadbalancers'));
  my $res = $elb->DescribeAllLoadBalancers(PageSize => '10');

  cmp_ok(@{ $res->LoadBalancerDescriptions }, '==', 16, '16 load balancers');
  my %keys;
  foreach my $item (@{ $res->LoadBalancerDescriptions }){
    $keys{ $item->LoadBalancerName } ++;
  }
  cmp_ok(scalar(keys %keys), '==', 16, '16 different load balancers');

}

{
  local $TODO = 'Haven\'t got a test case for ELB paginators';  
  my %keys;
  my $calls = 0;
 
  my $elb = $paws->service('ELB', region => 'eu-west-1', caller => mock_caller_for_test('elb-describeallloadbalancers'));
  $elb->DescribeAllLoadBalancers(sub { $calls++; $keys{ $_[0]->LoadBalancerName }++; }, PageSize => '10');

  cmp_ok($calls, '==', 16, '16 calls to the callback');
  cmp_ok(scalar(keys %keys), '==', 16, '16 different load balancers w/callback');
}

done_testing;
