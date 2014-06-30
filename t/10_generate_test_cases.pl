#!/usr/bin/env perl

use Hash::Flatten qw/flatten/;
use XML::Simple;
use YAML qw/LoadFile DumpFile/;
use JSON qw/from_json/;
use File::Slurp;
use strict;
use warnings;

my @files = @ARGV;
if (not @files) {
  my $dir = 't/xml/responses';
  opendir(my $dh, $dir);
  @files = map { "$dir/$_" } grep { $_ =~ m/\.xml$/ } sort readdir($dh);
  closedir($dh);
} else {
  @files = grep { $_ =~ m/\.xml$/ } @files;
}

foreach my $file (@files) {
   generate_test_case($file);
}

exit 0;

sub generate_test_case {
  my $file = shift;
  # Generate a YAML file with the API class to call
  my $xml = read_file($file);
  my $struct = XML::Simple::XMLin($xml);

  my ($api) = $file =~ m/\/(\w+?)\-/;
  $api = { 
    redshift => 'RedShift',
    importexport => 'ImportExport',
    elasticbeanstalk => 'ElasticBeanstalk',
    cloudwatch => 'CloudWatch',
    autoscaling => 'AutoScaling',
    cloudformation => 'CloudFormation',
    cloudfront => 'CloudFront',
  }->{ $api } || uc $api;

  my $call;
  if ($api eq 'EC2'){
    $call=$file;
    $call =~ s/\-(\w)/ uc($1) /ge;
    $call =~ s/^.*\/ec2//; 
    $call =~ s/.xml$//;
  } else {
    ($call) = grep { m/Result$/ } keys %$struct;
    if (not $call){
      print "Didn't find call for $file\n"; 
      print "KEYS: ", (join ' ', keys %$struct), "\n";
    } else {
      $call =~ s/Result$//;
    }
  }

  my $result_file = $file;
  $result_file =~ s/\.xml/.json/;
  my $result = from_json(read_file($result_file));
  delete $result->{ResponseMetadata};

  $result = flatten($result, { HashDelimiter => '.', ArrayDelimiter => '.' });

  my @tests;

  foreach my $path (sort keys $result) {
    push @tests, {
       path => $path,
       expected => $result->{ $path },
       op => 'eq'
    }
  }

  my $test_def_file = "$file.test.yml";
  my $test_info;
  if (-e $test_def_file) {
    $test_info = LoadFile($test_def_file);
    $test_info->{ service } = $api if ($ENV{REGENERATE_TEST_ALL} or $ENV{REGENERATE_TEST_SERVICE});
    $test_info->{ call } = $call if ($ENV{REGENERATE_TEST_ALL} or $ENV{REGENERATE_TEST_CALL});
    $test_info->{ tests }  = \@tests if ($ENV{REGENERATE_TEST_ALL} or $ENV{REGENERATE_TEST_TESTS}); 
  } else {
    $test_info = {
      service => $api,
      call => $call,
      tests => \@tests
    }
  }
  DumpFile($test_def_file, $test_info);
}
