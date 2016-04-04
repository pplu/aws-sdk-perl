#!/usr/bin/env perl

use lib 't/lib';

use strict;
use warnings;

use v5.10;
use Test::More;
use Test::Exception;
use FileCaller;
use YAML qw/LoadFile/;

use Paws;

my $debug = $ENV{DEBUG_TESTS} || 0;
my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

use Data::Dumper;

my $dir = 't/10_responses';
opendir(my $dh, $dir);
my @files = @ARGV;
if (not @files) {
  @files = map { "$dir/$_" } grep { $_ =~ m/\.response$/ } sort readdir($dh);
} else {
  @files = grep { $_ =~ m/\.response$/ } @files;
}

BAIL_OUT("No test cases to execute") if (not @files);

foreach my $file (@files) {
  test_file($file);
}

done_testing;

sub is_native {
  my $native = { Bool => 1, Str => 1, Num => 1, Int => 1, 'Paws::API::TimeStamp' => 1 }->{ $_[0] };
  return defined $native;
}

sub get_value_for_type {
  my $type = shift;
  return { Bool => 0, Str => 'Str', Num => 0.01, Int => 1, 'Paws::API::TimeStamp' => '2016-01-01' }->{ $type };
}

# Just make a valid structure of arguments with values for the required fields
# for a call. The test doesn't do anything with the parameters, but we need this
# so that "FileCaller" is happy with the parameters passed in
sub get_stub_call_args {
  my $call_class = shift;

  Paws->load_class($call_class);
  my %args = ();

  foreach my $attribute ($call_class->meta->get_all_attributes) {
    next if (not $attribute->is_required);

    my $att_type = $attribute->type_constraint->name;
    if ($att_type =~ m/ArrayRef\[(.*)\]/){
      my $inner_class = $1;
      if (is_native($inner_class)){
        $args{ $attribute->name } = [ get_value_for_type($inner_class) ];
      } else {
        $args{ $attribute->name } = [ get_stub_call_args($inner_class) ];
      }          
    } elsif ($att_type =~ m/HashRef\[(.*)\]/){
      my $inner_class = $1;
      if (is_native($inner_class)){
        $args{ $attribute->name } = { 'k1' => get_value_for_type($inner_class) };
      } else {
        $args{ $attribute->name } = { 'k1' => get_stub_call_args($inner_class) };
      }          
    } elsif (is_native($att_type)){
      $args{ $attribute->name } = get_value_for_type($att_type);
    } else {
      $args{ $attribute->name } = get_stub_call_args($att_type);
    }
  }

  return \%args;
}

sub test_file {
  my ($file) = @_;

  my $mode = 1;
  my $test_def_file = "$file.test.yml";

  my $test = LoadFile($test_def_file);

  SKIP: {
    skip "$test_def_file is lacking service or call entry",1 if (not $test->{service} or not $test->{call});
    local $TODO = "$test_def_file is TODO: $test->{todo}" if (defined $test->{todo});

    my $service = $aws->service($test->{service},
      region => 'fake_region',
      caller => FileCaller->new(
        response_file => $file,
      )
    );

    my $call_method = $test->{ call };
    my $call_class = $service->meta->name . '::' . $call_method;
    my $call_object = get_stub_call_args($call_class);

    my $res;
    my $passed = lives_ok {
      my $response = LoadFile($file);

      $res = $service->$call_method(%$call_object)
    } "Call $test->{service}\-\>$test->{ call } from $file";

    diag(Dumper($res)) if ($debug);

    if (not $passed or $TODO) {
      ok(0, "Can't test method access because something went horribly wrong in the call to $test->{ call }");
      next;
    }

    next if (ref($test->{ tests }) ne 'ARRAY');
    foreach my $t (@{ $test->{ tests } }){
      my $got;
      my $path;
      if (defined $t->{path}){
        $path = $t->{path};
        $got = eval { resolve_path($t->{path}, $res) };
        if ($@) {
          my $message = $@;
          chomp $message;
          ok(0, "Exception accessing $t->{path}: $message");
        }
      } else {
        die "Didn't know how to get a result to compare to. Check that test has path or dpath entry";
      }

      if (not defined $got and not defined $t->{expected}){
        ok(1, "Got undef on $path from result");
      } else {
        cmp_ok($got, $t->{op}, $t->{expected}, "Got $path $t->{op} $t->{expected} from result");
      }
    }
  }
}

use Scalar::Util 'blessed';

sub resolve_path {
  my ($path, $res) = @_;

  my ($call, $rest);
  if ($path =~ m/^\{(.*?)\}(?:\.(.*))?$/) {
    ($call, $rest) = ($1, $2);
  } elsif ($path =~ m/^([^.]+?)(?:\.(.*))?$/) {
    ($call, $rest) = ($1, $2);
  }

  if ($call =~ m/^\d+$/){
    $res = $res->[$call];
  } elsif (blessed($res)) {
    $res = $res->$call;
  } else {
    $res = $res->{$call};
  }

  if (not defined $rest) {
    return $res;
  } else {
    return resolve_path($rest, $res);
  }
}
