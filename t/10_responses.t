#!/usr/bin/env perl

use lib 't/lib';

use strict;
use warnings;

use v5.10;
use Test::More;
use Test::Exception;
use FileCaller;
use TestFromYaml;

use Paws;
use Paws::Crawler;

my $debug = $ENV{DEBUG_TESTS} || 0;
my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

use Data::Dumper;

my @files = @ARGV;
if (not @files) {
  push @files, sort glob("t/10_responses/*.response");
} else {
  @files = grep { $_ =~ m/\.response$/ } @files;
}

BAIL_OUT("No test cases to execute") if (not @files);

foreach my $file (@files) {
  test_file($file);
}

done_testing;

sub is_native {
  my $native = { 'Str|Undef' => 1, Bool => 1, Str => 1, Num => 1, Int => 1 }->{ $_[0] };
  return defined $native;
}

sub get_value_for_type {
  my $type = shift;
  return { 'Str|Undef' => 'StrOrUndef', Bool => 0, Str => 'Str', Num => 0.01, Int => 1 }->{ $type };
}

# Just make a valid structure of arguments with values for the required fields
# for a call. The test doesn't do anything with the parameters, but we need this
# so that "FileCaller" is happy with the parameters passed in
sub get_stub_call_args {
  my $call_class = shift;

  Paws->load_class($call_class);
  my %args = ();

  foreach my $attribute (keys %{ $call_class->params_map->{types} }) {
#    next if (not $attribute->is_required);

    my $att_type = $call_class->params_map->{types}{$attribute}{type};
    my $type_class = $call_class->params_map->{types}{$attribute}{class};
    if ($att_type =~ m/ArrayRef\[(.*)\]/){
      my $inner_class = $1;
      if (is_native($inner_class)){
        $args{ $attribute } = [ get_value_for_type($inner_class) ];
      } else {
        $args{ $attribute } = [ get_stub_call_args($type_class) ];
      }          
    } elsif ($att_type =~ m/HashRef\[(.*)\]/){
      my $inner_class = $1;
      if (is_native($inner_class)){
        $args{ $attribute } = { 'k1' => get_value_for_type($inner_class) };
      } else {
        $args{ $attribute } = { 'k1' => get_stub_call_args($type_class) };
      }          
    } elsif (is_native($att_type)){
      $args{ $attribute } = get_value_for_type($att_type);
    } else {
      $args{ $attribute } = get_stub_call_args($type_class);
    }
  }

  return \%args;
}

sub test_file {
  my ($file) = @_;

  my $test_def_file = "$file.test.yml";
  my $test = TestFromYaml->new(file => $test_def_file);

  SKIP: {
    skip "$test_def_file is lacking service or call entry",1 if (not $test->service or not $test->method);
    local $TODO = "$test_def_file is TODO: " . $test->todo_reason if ($test->is_todo);

    my $service = $aws->service($test->service,
      region => 'fake_region',
      caller => FileCaller->new(
        response_file => $file,
      )
    );

    my $call_method = $test->method;
    my $call_class = ref($service) . '::' . $call_method;
    my $call_object = get_stub_call_args($call_class);

    my $res;
    my $passed = lives_ok {
      $res = $service->$call_method(%$call_object)
    } "Call " . $test->service . '->' . $test->method . " from $file";

    if (not $passed or $TODO) {
      ok(0, "Can't test method access because something went horribly wrong in the call to $call_method");
      next;
    }

    next if (not $test->has_tests);

    my $crawler = Paws::Crawler->new;
    foreach my $t (@{ $test->tests }){
      my $got;
      my $path;
      if (defined $t->{path}){
        $path = $t->{path};
        $got = eval { $crawler->resolve_path($t->{path}, $res) };
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

