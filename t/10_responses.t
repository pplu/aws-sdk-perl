#!/usr/bin/env perl

use strict;
use warnings;

package Test10ResponseReadFromFile {
  use Moose::Role;
  use File::Slurp;
  use Module::Runtime;
  use Data::Dumper;
  use Test::More;

  has response_file => (isa => 'Str', is => 'rw');

  sub do_call {
    my ($self, $call_class, @params) = @_;
    Module::Runtime::require_module($call_class);
    Module::Runtime::require_module("${call_class}Result");

    my $content = read_file($self->response_file);
    my $result = $self->_process_response($content);

    diag("DATASTRUCUTRE FROM RESPONSE");
    diag(Dumper($result));

    if ($call_class->_returns){
      if ($call_class->_result_key){
        $result = $result->{ $call_class->_result_key };
      }

      my $o_result = $call_class->_returns->from_result($result);
      return $o_result;
    } else {
      return 1;
    }
    return 0;
  }
}

use Test::More;
use Test::Exception;
use YAML qw/DumpFile LoadFile/;
use XML::Simple;
use Aws;

my $aws = Aws->new(config => AWS::SDK::Config->new( caller => 'Test10ResponseReadFromFile' ) );

use Data::Dumper;

my $dir = 't/10_responses';
opendir(my $dh, $dir);
my @files = @ARGV;
if (not @files) {
  @files = map { "$dir/$_" } grep { $_ =~ m/\.xml$/ or $_ =~ m/\.json$/ } sort readdir($dh);
} else {
  @files = grep { $_ =~ m/\.xml$/ or $_ =~ m/\.json$/ } @files;
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
    my $service = $aws->service($test->{service})->new(
      response_file => $file
    );
    my $call = $test->{ call };
    my $res;
    my $passed = lives_ok {
      $res = $service->$call;
    } "Call $test->{service}\-\>$call from $file";

    diag(Dumper($res));
    if (not $passed) {
      ok(0, "Can't test method access because something went horribly wrong in the call to $call");
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
      } elsif (defined $t->{dpath}){
        $path = $t->{dpath};
        use Data::Path;
        my $hpath = Data::Path->new($res);
        $got = $hpath->get($t->{dpath});
      }

      cmp_ok($got, $t->{op}, $t->{expected}, "Got $path $t->{op} $t->{expected} from result");
    }
  }
}

use Scalar::Util 'blessed';

sub resolve_path {
  my ($path, $res) = @_;
  if (my ($call, $rest) = ($path =~ m/^(\w+?)\.(.*)$/)) {
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
