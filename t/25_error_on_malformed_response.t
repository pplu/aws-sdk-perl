#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Test::Exception;
use Paws;
use Paws::JsonParamsService;
use TestGivenResponse;
use Data::Dumper;

my $aws = Paws->new(config => {
  credentials => 'Test::CustomCredentials',
  caller => 'TestGivenResponse',
  region => 'fake_region',
});

foreach my $status (503, 400) {
  my $s = $aws->service('JsonParamsService');

  throws_ok(
    sub { 
      $s->Method3(response => q'', status => $status); 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method3(response => 'notajsonstring', status => $status); 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method3(response => '[UNDEF]', status => $status); 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');

  throws_ok(
    sub { 
      $s->Method1(response => q'', status => $status); 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method1(response => 'notajsonstring', status => $status); 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method1(response => '[UNDEF]', status => $status); 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
}

foreach my $status (503, 400) {
  my $s = $aws->service('QueryParamsService');

  throws_ok(
    sub { 
      $s->Method3(response => q'', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method3(response => '[UNDEF]', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method3(response => 'notanxmlstring', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method1(response => q'', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method1(response => 'UNDEF', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method1(response => 'notanxmlstring', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
}

foreach my $status (503, 400) {
  my $s = $aws->service('RestJsonParamsService');

  throws_ok(
    sub { 
      $s->Method3(response => q'', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method3(response => '[UNDEF]', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method3(response => 'notajsonstring', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');

  throws_ok(
    sub { 
      $s->Method1(response => q'', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method1(response => '[UNDEF]', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  throws_ok(
    sub { 
      $s->Method1(response => 'notajsonstring', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
}


foreach my $status (200) {
  my $s = $aws->service('JsonParamsService');

  lives_ok(
    sub { 
      $s->Method3(response => q'', status => $status); 
    },
  );
  throws_ok(
    sub { 
      $s->Method3(response => 'notajsonstring', status => $status); 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  lives_ok(
    sub { 
      $s->Method3(response => '[UNDEF]', status => $status); 
    },
  );

  lives_ok(
    sub { 
      $s->Method1(response => q'', status => $status); 
    },
  );
  throws_ok(
    sub { 
      $s->Method1(response => 'notajsonstring', status => $status); 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
  lives_ok(
    sub { 
      $s->Method1(response => '[UNDEF]', status => $status); 
    },
  );
}

foreach my $status (200) {
  my $s = $aws->service('QueryParamsService');

  lives_ok(
    sub { 
      $s->Method3(response => q'', status => $status) 
    },
  );
  lives_ok(
    sub { 
      $s->Method3(response => '[UNDEF]', status => $status) 
    },
  );
  throws_ok(
    sub { 
      $s->Method3(response => 'notanxmlstring', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');

  lives_ok(
    sub { 
      $s->Method1(response => q'', status => $status) 
    },
  );
  lives_ok(
    sub { 
      $s->Method1(response => '[UNDEF]', status => $status) 
    },
  );
  throws_ok(
    sub { 
      $s->Method1(response => 'notanxmlstring', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
}

foreach my $status (200) {
  my $s = $aws->service('RestJsonParamsService');

  lives_ok(
    sub { 
      $s->Method3(response => q'', status => $status) 
    },
  );
  lives_ok(
    sub { 
      $s->Method3(response => '[UNDEF]', status => $status) 
    },
  );
  throws_ok(
    sub { 
      $s->Method3(response => 'notajsonstring', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');

  lives_ok(
    sub { 
      $s->Method1(response => q'', status => $status) 
    },
  );
  lives_ok(
    sub { 
      $s->Method1(response => '[UNDEF]', status => $status) 
    },
  );
  throws_ok(
    sub { 
      $s->Method1(response => 'notajsonstring', status => $status) 
    },
    "Paws::Exception",
  );
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Exception of type InvalidContent');
}


done_testing;
