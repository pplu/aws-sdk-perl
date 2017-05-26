#!/usr/bin/env perl

use lib 't/lib';

use Test::More;
use Test::Exception;
use Paws;
use TestRequestCaller;

Paws->default_config->caller(TestRequestCaller->new);
Paws->default_config->credentials('Test::CustomCredentials');

{
  my $svc = Paws->service('SQS', endpoint => 'http://localhost:6000', region => 'eu-west-1');

  isa_ok($svc->endpoint, 'URI');
  cmp_ok($svc->endpoint_host, 'eq', 'localhost');
  cmp_ok($svc->_api_endpoint, 'eq', 'http://localhost:6000');

  my $ro = $svc->DeleteQueue(QueueUrl => 'xxx');
 
  cmp_ok($ro->url, 'eq', 'http://localhost:6000/');
  like($ro->headers->header('authorization'), qr|/eu-west-1/|, 'found correct region in the authorization header');
}

{
  throws_ok(sub {
    my $svc = Paws->service('SQS', endpoint => 'http://localhost:6000');
  }, 'Paws::Exception', 'Throws an exception because SQS needs a region');
}

{
  my $svc = Paws->service('IAM', endpoint => 'http://localhost:7000');

  isa_ok($svc->endpoint, 'URI');
  cmp_ok($svc->endpoint_host, 'eq', 'localhost');
  cmp_ok($svc->_api_endpoint, 'eq', 'http://localhost:7000');

  my $ro = $svc->CreateUser(UserName => 'xxx');

  cmp_ok($ro->url, 'eq', 'http://localhost:7000/');
  like($ro->headers->header('authorization'), qr|/us-east-1/|, 'found correct region in the authorization header');
}

{
  my $svc = Paws->service('IAM', endpoint => 'http://localhost:8000', region => 'far-west-1');

  isa_ok($svc->endpoint, 'URI');
  cmp_ok($svc->endpoint_host, 'eq', 'localhost');
  cmp_ok($svc->_api_endpoint, 'eq', 'http://localhost:8000');

  my $ro = $svc->CreateUser(UserName => 'xxx');

  cmp_ok($ro->url, 'eq', 'http://localhost:8000/');
  like($ro->headers->header('authorization'), qr|/far-west-1/|, 'found correct region in the authorization header');
}

done_testing;
