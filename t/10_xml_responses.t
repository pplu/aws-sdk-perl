#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use Test::Exception;
use YAML qw/DumpFile LoadFile/;
use XML::Simple;
use Module::Load;

use Data::Dumper;

my $dir = 't/xml/responses';
opendir(my $dh, $dir);
my @files = @ARGV;
if (not @files) {
  @files = map { "$dir/$_" } grep { $_ =~ m/\.xml$/ } sort readdir($dh);
} else {
  @files = grep { $_ =~ m/\.xml$/ } @files;
}

foreach my $file (@files) {
  test_file($file);
}

done_testing;

sub test_file {
  my ($file) = @_;
  my $xml;
  {
    use autodie;
    $/ = undef;
    open my $fh, '<', $file;
    $xml = <$fh>;
    close $fh;
  }
  my $struct = XML::Simple::XMLin($xml);

  my $mode = 0;

  if ($mode == 1){
    # Generate a YAML file with the API class
    # to call
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
  
    my $class;
    if ($api eq 'EC2'){
      $class=$file;
      $class =~ s/\-(\w)/ uc($1) /ge;
      $class =~ s/^.*\/ec2//; 
      $class =~ s/.xml$//;
      $class = "${class}Result";
    } else {
      ($class) = grep { m/Result$/ } keys %$struct;
    }
    $class = "Aws::${api}::${class}" if ($class);
    DumpFile("$file.test.yml", {
      use => "Aws::${api}",
      class => $class
    });
  } else {
    my $test = LoadFile("$file.test.yml");

    lives_ok {
      load "$test->{use}";
    } "Load $test->{use}";

    SKIP: {
      skip "$file.test.yml is lacking class entry",1 unless $test->{class};

      my $res;
      lives_ok {
        $res = $test->{class}->from_result($struct);
        diag(Dumper($res));
      } "Construct class for $test->{class} from $file";
    }
  }
}
