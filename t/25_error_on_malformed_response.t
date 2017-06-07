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

{
  my $s = $aws->service('JsonParamsService');

  throws_ok(
    sub { 
      $s->Method3(response => q'', status => 503); 
    },
    "Paws::Exception",
  );
  diag($@);
#  throws_ok(
#    sub { 
#      $s->Method3(response => undef, status => 503); 
#    },
#    "Paws::Exception",
#  );
  throws_ok(
    sub { 
      $s->Method1(response => q'', status => 503); 
    },
    "Paws::Exception",
  );
#  throws_ok(
#    sub { 
#      $s->Method1(response => undef, status => 503); 
#    },
#    "Paws::Exception",
#  );
  throws_ok(
    sub { 
      $s->Method1(response => 'notajsonstring', status => 503); 
    },
    "Paws::Exception",
  );
}

{
  my $s = $aws->service('QueryParamsService');

  throws_ok(
    sub { 
      $s->Method3(response => q'', status => 503) 
    },
    "Paws::Exception",
  );
#  throws_ok(
#    sub { 
#      $s->Method3(response => undef, status => 503) 
#    },
#    "Paws::Exception",
#  );
  throws_ok(
    sub { 
      $s->Method1(response => q'', status => 503) 
    },
    "Paws::Exception",
  );
#  throws_ok(
#    sub { 
#      $s->Method1(response => undef, status => 503) 
#    },
#    "Paws::Exception",
#  );
  throws_ok(
    sub { 
      $s->Method1(response => 'notanxmlstring', status => 503) 
    },
    "Paws::Exception",
  );
}

{
  my $s = $aws->service('RestJsonParamsService');

  throws_ok(
    sub { 
      $s->Method3(response => q'', status => 503) 
    },
    "Paws::Exception",
  );
#  throws_ok(
#    sub { 
#      $s->Method3(response => undef, status => 503) 
#    },
#    "Paws::Exception",
#  );
  throws_ok(
    sub { 
      $s->Method1(response => q'', status => 503) 
    },
    "Paws::Exception",
  );
#  throws_ok(
#    sub { 
#      $s->Method1(response => undef, status => 503) 
#    },
#    "Paws::Exception",
#  );
  throws_ok(
    sub { 
      $s->Method1(response => 'notajsonstring', status => 503) 
    },
    "Paws::Exception",
  );
}


done_testing;
