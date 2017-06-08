#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Test::Exception;
use Paws;
use Paws::Crawler;
use Paws::Net::FileMockCaller;
use Paws::API::ServiceToClass;

use TestFromYaml;

my $paws = Paws->new(config => {
  credentials => 'Test::CustomCredentials'
});

my $dir = 't/18_mocked';
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
  my $file = shift;
  my $caller = Paws::Net::FileMockCaller->new(
    file => $file
  );
  my $service_code = $caller->service;
  my $service_name = Paws::API::ServiceToClass::service_to_class($service_code);

  my $method_call   = $caller->method;
  my $method_params = $caller->params;

  my $test_def_file = "$file.test.yml";
  my $test = TestFromYaml->new(file => $test_def_file);

  SKIP: {
    local $TODO = "$test_def_file is TODO: " . $test->todo_reason if ($test->is_todo);

    my $svc = $paws->service($service_name, region => 'dummy', caller => $caller);

    my $ret;
    my $passed = lives_ok(sub {
      $ret = $svc->$method_call(%$method_params);
    }, "Called $method_call on $service_name with params from $file");

    if (not $passed) {
      ok(0, "Can't test method access because something went horribly wrong in the call to $method_call");
      next;
    }

    next if (not $test->has_tests);

    my $crawler = Paws::Crawler->new;
    foreach my $t (@{ $test->tests }){
      my $got;
      my $path;
      if (defined $t->{path}){
        $path = $t->{path};
        $got = eval { $crawler->resolve_path($t->{path}, $ret) };
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

