#!/usr/bin/env perl

use strict;
use warnings;

use MooseX::Declare;
use Data::Printer;
use Data::Dumper;
use JavaScript::V8;
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
@files = glob('aws-sdk-js/lib/services/api/*.js') if (not @files);

foreach my $file (@files) {
  my ($f) = ($file =~ m/api\/(.*?)\-/);
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
  my $context = JavaScript::V8::Context->new();
  my $temp;
  $context->bind(module => {} );
  $context->bind(pass => sub { $temp = $_[0] });
  my $result = $context->eval($text . "\n pass(module.exports);" );

  if ($api eq 'cloudformation'){
    $temp->{ operations }->{createStack}->{input}->{members}->{Parameters}->{members}->{class} = 'Parameter';
    $temp->{ operations }->{createStack}->{input}->{members}->{Tags}->{members}->{class} = 'AWS::Common::Tag';
    $temp->{ operations }->{estimateTemplateCost}->{input}->{members}->{Parameters}->{members}->{class} = 'Parameter';
    $temp->{ operations }->{updateStack}->{input}->{members}->{Parameters}->{members}->{class} = 'Parameter';

    $temp->{ operations }->{listStackResources}->{output}->{members}->{StackResourceSummaries}->{members}->{class} = 'StackResourceSummary';
    $temp->{ operations }->{describeStackEvents}->{output}->{members}->{StackEvents}->{members}->{class} = 'StackEvent';
    $temp->{ operations }->{describeStacks}->{output}->{members}->{Stacks}->{members}->{class} = 'Stack';
    $temp->{ operations }->{describeStacks}->{output}->{members}->{Stacks}->{members}->{members}->{Outputs}->{members}->{class} = 'Output';
    $temp->{ operations }->{describeStacks}->{output}->{members}->{Stacks}->{members}->{members}->{Parameters}->{members}->{class} = 'Parameter';
    $temp->{ operations }->{describeStacks}->{output}->{members}->{Stacks}->{members}->{members}->{Tags}->{members}->{class} = 'AWS::Common::Tag';
    $temp->{ operations }->{describeStackResource}->{output}->{members}->{StackResourceDetail}->{class} = 'StackResourceDetail';
    $temp->{ operations }->{listStacks}->{output}->{members}->{StackSummaries}->{members}->{class} = 'StackSummary';
    $temp->{ operations }->{validateTemplate}->{output}->{members}->{Parameters}->{members}->{class} = 'OutParameter';
    $temp->{ operations }->{describeStackResources}->{output}->{members}->{StackResources}->{members}->{class} = 'StackResource';
  }

  return $temp;
}


sub process_api {
  my ($api, $struct) = @_;

  my $type = $struct->{format};

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

