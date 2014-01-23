#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use Test::Exception;

use Net::AWS::Caller;
use MooseX::Declare;


use Data::Dumper;

class XMLResponseTester with (Net::AWS::XMLResponse) {
  use Module::Load;

  has api => (is => 'ro', isa => 'Str');

  method process_result($api, $xml) {
    my $result = $self->_process_response($xml);
    my ($class) = grep { m/Result$/ } keys %$result;
    if ($class) {
      my $cl = "Aws::${api}::${class}";
      load "Aws::${api}";
      my $o_result = $cl->from_result($result->{ $class });

      use Data::Dumper;
      print STDERR Dumper($o_result);
    } else {
      die "Can't process $api call with keys " . join ',', keys %$result;
    }
  }
}

#  method ReplaceRouteTableAssociation (%args) {
#    my $call = AWS::EC2::ReplaceRouteTableAssociation->new(%args);
#    my $result = $self->_api_caller($call->_api_call, $call);
#    my $o_result = AWS::EC2::ReplaceRouteTableAssociationResult->from_result($result->{ $call->_result_key });
#    return $o_result;
#  }


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
  my $test = XMLResponseTester->new;
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

  lives_ok {
    $test->process_result($api, $xml);
  } "Construct class for Aws::${api} from $file";
}
