#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use Test::Exception;

use Net::AWS::Caller;
use Moops;

use AWS::EC2;
use AWS::SES;
use AWS::RedShift;
use AWS::ElasticBeanstalk;
use AWS::IAM;
use AWS::ELB;
use AWS::CloudWatch;
use AWS::AutoScaling;
use AWS::SNS;
use AWS::SQS;
use AWS::RDS;
use AWS::CloudFormation;
use AWS::ImportExport;
#use AWS::EMR;

use Data::Dumper;

class XMLResponseTester with (Net::AWS::XMLResponse) {
  has api => (is => 'ro', isa => 'Str');

  method process_result($api, $xml) {
    my $result = $self->_process_response($xml);
    my ($class) = grep { m/Result$/ } keys %$result;
    if ($class) {
      my $cl = "AWS::${api}::${class}";
      my $o_result = $cl->from_result($result->{ $class });

      #print Dumper($o_result);
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
my @files = grep { $_ =~ m/\.xml$/ } sort readdir($dh);
foreach my $file (@files) {

  test_file($dir, $file);
}

done_testing;

sub test_file {
  my ($dir, $file) = @_;
  my $xml;
  {
    $/ = undef;
    open my $fh, '<', "$dir/$file";
    $xml = <$fh>;
    close $fh;
  }
  my $test = XMLResponseTester->new;
  my ($api) = $file =~ m/^(\w+?)\-/;
  $api = { 
    redshift => 'RedShift',
    importexport => 'ImportExport',
    elasticbeanstalk => 'ElasticBeanstalk',
    cloudwatch => 'CloudWatch',
    autoscaling => 'AutoScaling',
    cloudformation => 'CloudFormation',
  }->{ $api } || uc $api;

  lives_ok {
    $test->process_result($api, $xml);
  } "Construct class for AWS::${api} from $file";
}
