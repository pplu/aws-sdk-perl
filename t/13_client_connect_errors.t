#!/usr/bin/env perl

use Paws;
use Test::Exception;
use Test::More;
use Data::Dumper;
use Module::Runtime qw/require_module/;

use Test::CustomCredentials;

use lib 't/lib';

my $closed_server_endpoint = 'http://localhost:65511';

my $p = Paws->new(config => { credentials => 'Test::CustomCredentials' });

diag "Default caller";

throws_ok {
  $p->service('EC2', 
              region => 'test', 
              region_rules => [ { uri => $closed_server_endpoint } ]
             )->DescribeInstances;
} 'Paws::Exception', 'got exception';

like($@->message, qr/Connection refused/, 'Correct message');
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

like($@->message, qr/Connection refused/, 'Correct message');
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
goto END if ($@);

throws_ok {
  $mojo->service('EC2',
                 region => 'test', 
                 region_rules => [ { uri => $closed_server_endpoint } ]
                )->DescribeInstances->get;
} 'Paws::Exception', 'got exception';

cmp_ok($@->message, 'eq', 'Connection refused', 'Correct message');
cmp_ok($@->code, 'eq', 'ConnectionError', 'Correct code ConnectionError code');

END:
done_testing;
