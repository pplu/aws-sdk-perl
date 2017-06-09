#!/usr/bin/env perl

use Test::More;
use Paws;
use strict;
use warnings;

my $svc = Paws->service('Signin');

# This method can't be tested with the MockCaller, as it really
# doesn't do an HTTP call
my $res = $svc->Login(
  Issuer => 'https:://www.example.com/',
  Destination => 'https://console.aws.amazon.com/',
  SigninToken => 'SIGNINTOKEN',
);

cmp_ok($res->URL, 'eq', 'https://signin.aws.amazon.com/federation?Action=login&Destination=https%3A%2F%2Fconsole.aws.amazon.com%2F&Issuer=https%3A%3A%2F%2Fwww.example.com%2F&SigninToken=SIGNINTOKEN', 'Got correct signin URL');

done_testing;
