#!/usr/bin/env perl

use lib 't/lib';

use strict;
use warnings;

use Test::More;
use Test::Exception;
use YAML qw/DumpFile LoadFile/;
use XML::Simple;
use File::Slurp;
use Module::Runtime;

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
    );

    my $call_class = $service->meta->name . '::' . $test->{ call };
    Paws->load_class($call_class);

    my $res;
    my $passed = lives_ok {
      my $content = read_file($file, {binmode => ':utf8'});
      my $unserialized_struct = $service->unserialize_response( $content );

      if ($debug){
        diag("DATASTRUCUTRE FROM RESPONSE");
        diag(Dumper($unserialized_struct));
      }

      $res = $service->response_to_object($unserialized_struct, $call_class);
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
  if ($path =~ m/^\{(.*?)\}\.(.*)$/) {
    ($call, $rest) = ($1, $2);
  } elsif ($path =~ m/^([^.]+?)\.(.*)$/) {
    ($call, $rest) = ($1, $2);
  }

  if (defined $call and defined $rest) {
    if ($call =~ m/^\d+$/){
      die "Can't access index $call\n" if (not defined $res->[$call]);
      return resolve_path($rest, $res->[$call]);
    } else {
      die "Can't call method $call on an undefined value\n" if (not defined $res);
      if (blessed($res)){
        die "Doesn't have accessor $call on path $path\n" if (not $res->can($call));
        return resolve_path($rest, $res->$call);
      } else {
        return resolve_path($rest, $res->{$call});
      }
    }
  } else {
    die "Can't access $path on an undefined value\n" if (not defined $res); 
    if ($path =~ m/^\d+$/){
      return $res->[$path];
    } else {
      if (blessed($res)){
        die "Doesn't have accessor $path\n" if (not $res->can($path));
        return $res->$path;
      } else {
        return $res->{$path};
      }
    }
  }
}
