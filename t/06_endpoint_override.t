#!/usr/bin/env perl

use Test::More;
use Paws;

my $svc = Paws->service('SQS', endpoint => 'http://localhost:6000/', region => 'eu-west-1');

isa_ok($svc->endpoint, 'URI');
cmp_ok($svc->endpoint_host, 'eq', 'localhost');
cmp_ok($svc->_api_endpoint, 'eq', 'http://localhost:6000/');

$svc->DeleteQueue(QueueUrl => 'xxx');

done_testing;
