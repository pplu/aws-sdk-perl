#!/usr/bin/env perl

use Paws;
use Test::Exception;
use Test::More;
use Data::Dumper;
use Module::Runtime qw/require_module/;

use lib 't/lib';

use Test::CustomCredentials;

my $match_message_tests = $ENV{IN_TRAVIS} == 1;

my $closed_server_endpoint = 'http://localhost:65511';

my $p = Paws->new(config => { credentials => 'Test::CustomCredentials' });

diag "Default caller";

throws_ok {
  $p->service('EC2', 
              region => 'test', 
              region_rules => [ { uri => $closed_server_endpoint } ]
             )->DescribeInstances;
} 'Paws::Exception', 'got exception';

like($@->message, qr/Connection refused/, 'Correct message') if ($match_message_tests);
cmp_ok($@->code, 'eq', 'ConnectionError', 'Correct code ConnectionError code');
diag "LWP caller";

my $lwp = eval {
  Paws->new(config => { 
    caller => 'Paws::Net::LWPCaller',
    credentials => 'Test::CustomCredentials' 
  });
};
goto MOJO if ($@);

throws_ok {
  $lwp->service('EC2',
                region => 'test', 
                region_rules => [ { uri => $closed_server_endpoint } ]
               )->DescribeInstances;
} 'Paws::Exception', 'got exception';

like($@->message, qr/Connection refused/, 'Correct message') if ($match_message_tests);
cmp_ok($@->code, 'eq', 'ConnectionError', 'Correct code ConnectionError code');

MOJO:
diag "Mojo caller";

my $mojo = eval {
  Paws->new(config => {
    caller => 'Paws::Net::MojoAsyncCaller',
    credentials => 'Test::CustomCredentials' 
  });
};
diag($@);
goto FURL if ($@);

throws_ok {
  $mojo->service('EC2',
                 region => 'test', 
                 region_rules => [ { uri => $closed_server_endpoint } ]
                )->DescribeInstances->get;
} 'Paws::Exception', 'got exception';

cmp_ok($@->message, 'eq', 'Connection refused', 'Correct message') if ($match_message_tests);
cmp_ok($@->code, 'eq', 'ConnectionError', 'Correct code ConnectionError code');

FURL:
diag "Furl caller";

my $furl = eval {
  Paws->new(config => { 
    caller => 'Paws::Net::FurlCaller',
    credentials => 'Test::CustomCredentials' 
  });
};
goto END if ($@);

throws_ok {
  $furl->service('EC2',
                region => 'test', 
                region_rules => [ { uri => $closed_server_endpoint } ]
               )->DescribeInstances;
} 'Paws::Exception', 'got exception';

like($@->message, qr/Connection refused/, 'Correct message') if ($match_message_tests);
cmp_ok($@->code, 'eq', 'ConnectionError', 'Correct code ConnectionError code');

END:
done_testing;
