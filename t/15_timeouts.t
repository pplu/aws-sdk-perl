#!/usr/bin/env perl

use Paws;
use Test::Exception;
use Test::Timer;
use Test::More;
use Data::Dumper;
use Module::Runtime qw/require_module/;

use lib 't/lib';

use Test::CustomCredentials;

use IO::Socket::INET;

# Timeout tests are very unstable on CI, probbaly due to high loads.
plan skip_all => 'CI detected. Skipping timeout tests' if $ENV{CI};
plan skip_all => 'Author testing only' unless $ENV{AUTHOR_TESTING};

my $sock = IO::Socket::INET->new(Listen    => 5,
                                 LocalAddr => 'localhost',
                                 LocalPort => 9000,
                                 Proto     => 'tcp');

my $closed_server_endpoint = 'http://localhost:9000';

my $p = Paws->new(config => { credentials => 'Test::CustomCredentials' });

diag "Default caller";

time_ok(sub {
  throws_ok {
    $p->service('EC2', 
                region => 'test', 
                region_rules => [ { uri => $closed_server_endpoint } ]
               )->DescribeInstances;
  } 'Paws::Exception', 'got exception';

  cmp_ok($@->code, 'eq', 'ConnectionError', 'Correct code ConnectionError code');
}, 61, 'Timeout under 61 secs');


diag "LWP caller";

my $lwp = eval {
  Paws->new(config => { 
    caller => 'Paws::Net::LWPCaller',
    credentials => 'Test::CustomCredentials' 
  });
};
goto MOJO if ($@);

time_ok(sub {
  throws_ok {
    $lwp->service('EC2',
                  region => 'test', 
                  region_rules => [ { uri => $closed_server_endpoint } ]
                 )->DescribeInstances;
  } 'Paws::Exception', 'got exception';

  cmp_ok($@->code, 'eq', 'ConnectionError', 'Correct code ConnectionError code');
}, 61, 'Timeout under 61 secs');

MOJO:
diag "Mojo caller";

my $mojo = eval {
  Paws->new(config => {
    caller => 'Paws::Net::MojoAsyncCaller',
    credentials => 'Test::CustomCredentials' 
  });
};
goto FURL if ($@);

time_ok(sub {
  throws_ok {
    $mojo->service('EC2',
                   region => 'test', 
                   region_rules => [ { uri => $closed_server_endpoint } ]
                  )->DescribeInstances->get;
  } 'Paws::Exception', 'got exception';

  cmp_ok($@->code, 'eq', 'ConnectionError', 'Correct code ConnectionError code');
}, 61, 'Timeout under 61 secs');

FURL:
diag "Furl caller";

my $furl = eval {
  Paws->new(config => {
    caller => 'Paws::Net::FurlCaller',
    credentials => 'Test::CustomCredentials' 
  });
};
goto END if ($@);

time_ok(sub {
  throws_ok {
    $mojo->service('EC2',
                   region => 'test', 
                   region_rules => [ { uri => $closed_server_endpoint } ]
                  )->DescribeInstances->get;
  } 'Paws::Exception', 'got exception';

  cmp_ok($@->code, 'eq', 'ConnectionError', 'Correct code ConnectionError code');
}, 61, 'Timeout under 61 secs');

END:
done_testing;
