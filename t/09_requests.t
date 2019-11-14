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
  push @files, sort glob("t/09_requests/*.request");
} else {
  @files = grep { $_ =~ m/\.request$/ } @files;
}

BAIL_OUT("No test cases to execute") if (not @files);

foreach my $file (@files) {
  test_file($file);
}

done_testing;

sub test_file {
  my ($file) = @_;
#warn("test_file=$file");
  my $test_def_file = "$file.test.yml";
  my $test = TestFromYaml->new(file => $test_def_file);
#warn("file=$file,   test_def_file=".$test_def_file);
  my $opts = YAML::LoadFile($file);
#use Data::Dumper;
#warn("file=".Dumper($opts));
SKIP: {
    skip "$test_def_file is lacking service or call entry",1 if (not $test->service or not $test->method);
    local $TODO = "$test_def_file is TODO: " . $test->todo_reason if ($test->is_todo);


	#my $s3 = Paws->service('S3', region => 'us-east-1', debug=>1);
	my $service = $aws->service($test->service,
      region => 'fake_region',
      caller => FileCaller->new(
        response_file => $file,
		request_only=>1,
      )
    );

	my $call_method = $test->method;
    my $call_class = $service->meta->name . '::' . $call_method;
#n	warn("call_method=$call_method, call_class=$call_class");
	#Paws->load_class($call_class);
    my $res;
    my $passed = lives_ok {
      $res = $service->$call_method(%{$opts})
    } "Call " . $test->service . '->' . $test->method . " from $file";

    if (not $passed or $TODO) {
      ok(0, "Can't test method access because something went horribly wrong in the call to $call_method");
      next;
    }

    next if (not $test->has_tests);

    foreach my $t (@{ $test->tests }){
      my $got;
      my $path;
      if (defined $t->{path}){
        $path = $t->{path};
		eval {
		  if (exists($t->{key})){
             my $hash =  $res->$path;
			 $got     = $hash->{$t->{key}};
		  }
		  else {
		     $got = $res->$path;
	      }
		};
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

