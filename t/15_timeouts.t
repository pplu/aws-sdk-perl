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

# Do a Volkswagen if we are in Travis. Timeout tests are very instable (since
# when running in Travis, timeouts will usually take more than 61 secs, (probablly
# due to high loads
if ($ENV{IN_TRAVIS} == 1){
  ok('Travis CI detected. Skipping timeout tests');
  done_testing;
  exit
}

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

  like($@->message, qr/Timed out/, 'Correct message');
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

  like($@->message, qr/read timeout/, 'Correct message');
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
goto END if ($@);

time_ok(sub {
  throws_ok {
    $mojo->service('EC2',
                   region => 'test', 
                   region_rules => [ { uri => $closed_server_endpoint } ]
                  )->DescribeInstances->get;
  } 'Paws::Exception', 'got exception';

  cmp_ok($@->message, 'eq', 'Inactivity timeout', 'Correct message');
  cmp_ok($@->code, 'eq', 'ConnectionError', 'Correct code ConnectionError code');
}, 61, 'Timeout under 61 secs');

END:
done_testing;
