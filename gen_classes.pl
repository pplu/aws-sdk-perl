#!/usr/bin/env perl

use strict;
use warnings;

use MooseX::Declare;
use Data::Printer;
use Data::Dumper;
use JSON;
use File::Slurp;

use lib 'builder-lib';

use AWS::API::Builder::query;

my $namespaces = {
  autoscaling => 'AutoScaling',
  cloudformation => 'CloudFormation',
  cloudfront => 'CloudFront',
  cloudsearch => 'CloudSearch',
  cloudwatch => 'CloudWatch',
  datapipeline => 'DataPipeline',
  directconnect => 'DirectConnect',
  dynamodb => 'DynamoDB',
  ec2 => 'EC2',
  elasticache => 'ElastiCache',
  elasticbeanstalk => 'ElasticBeanstalk',
  elastictranscoder => 'ElasticTranscoder',
  elb => 'ELB',
  emr => 'EMR',
  glacier => 'Glacier',
  iam => 'IAM',
  importexport => 'ImportExport',
  opsworks => 'OpsWorks',
  rds => 'RDS',
  redshift => 'RedShift',
  route53 => 'Route53',
  s3 => 'S3',
  ses => 'SES',
  simpledb => 'SimpleDB',
  simpleworkflow => 'SimpleWorkflow',
  sns => 'SNS',
  sqs => 'SQS',
  storagegateway => 'StorageGateway',
  sts => 'STS',
  support => 'Support'  
};


my (@files) = @ARGV;
@files = glob('botocore/botocore/data/aws/*.json') if (not @files);

foreach my $file (@files) {
  my ($f) = ($file =~ m/aws\/(.*?)\.json/);
  my $ns = $namespaces->{ $f };
  die "$f doesn't have a namespace defined" if (not defined $ns);
  my $struct = process_file($file, $f);
  my $content = process_api("AWS::$ns", $struct);
  #print $content;
  write_file("auto-lib/AWS/${ns}.pm", $content);
}

sub process_file {
  my ($file, $api) = @_;
  my $text = read_file( $file );
  return from_json($text);
}


sub process_api {
  my ($api, $struct) = @_;

  my $type = $struct->{type} or die "Type of API call not found";

  my $class_maker = "AWS::API::Builder::${type}";
  my $c = $class_maker->new(struct => $struct, api => $api);

  #p $c;

  if ($type ne 'query') {
    warn "Skipping $api because it's calling format is $type";
    return;
  }

  my $out = $c->process_api;

  #p $c;

  return $out;
}

