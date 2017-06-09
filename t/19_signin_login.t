#!/usr/bin/env perl

use lib 't/lib';

use Test::More;
use Paws;
use strict;
use warnings;

my $paws = Paws->new(config => {
  credentials => 'Test::CustomCredentials'
});

my $svc = $paws->service('Signin');

# This method can't be tested with the MockCaller, as it really
# doesn't do an HTTP call
my $res = $svc->Login(
  Issuer => 'https:://www.example.com/',
  Destination => 'https://console.aws.amazon.com/',
  SigninToken => 'SIGNINTOKEN',
);

my $got_url = URI->new($res->URL);
my $exp_url = URI->new('https://signin.aws.amazon.com/federation?Action=login&Destination=https%3A%2F%2Fconsole.aws.amazon.com%2F&Issuer=https%3A%3A%2F%2Fwww.example.com%2F&SigninToken=SIGNINTOKEN');

cmp_ok($got_url->scheme, 'eq', $exp_url->scheme);
cmp_ok($got_url->host, 'eq', $exp_url->host);
cmp_ok($got_url->path, 'eq', $exp_url->path);
is_deeply({ $got_url->query_form }, { $exp_url->query_form });

done_testing;
