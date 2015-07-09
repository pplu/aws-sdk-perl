use Test::More;
use strict;
use warnings;

eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
my @poddirs = qw( lib auto-lib );
all_pod_files_ok( all_pod_files( @poddirs ) );
