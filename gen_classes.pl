#!/usr/bin/env perl

use strict;
use warnings;

use MooseX::Declare;
use Data::Printer;
use Data::Dumper;
use JSON;
use File::Slurp;

use lib 'builder-lib';

use Module::Load;

my $namespaces = {
  autoscaling => 'AutoScaling',
  cloudformation => 'CloudFormation',
  cloudfront => 'CloudFront',
  cloudsearch => 'CloudSearch',
  cloudtrail => 'CloudTrail',
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
  kinesis => 'Kinesis',
  opsworks => 'OpsWorks',
  rds => 'RDS',
  redshift => 'RedShift',
  route53 => 'Route53',
  s3 => 'S3',
  ses => 'SES',
  simpledb => 'SimpleDB',
  swf => 'SimpleWorkflow',
  sns => 'SNS',
  sqs => 'SQS',
  storagegateway => 'StorageGateway',
  sts => 'STS',
  support => 'Support',
  sdb => 'SDB',
  _retry => 'SKIP_THIS_CLASS', 
  _regions => 'SKIP_THIS_CLASS',
};


my (@files) = @ARGV;


# If no files specified, get the last version of each json for each service
if (not @files) {
  my @dirs = glob('botocore/botocore/data/aws/*');

  foreach my $class_dir (@dirs) {
    my @class_defs = grep { -f $_ } glob("$class_dir/*.json");
    next if (not @class_defs);
    @class_defs = sort @class_defs;
    my $class_version = pop @class_defs;
    push @files, $class_version;
  }
}

foreach my $file (@files) {
  print "Processing $file\n";
  if (my ($f, $version) = ($file =~ m/aws\/(.*?)\/(.*?)\.json/)){
    my $ns = $namespaces->{ $f };
    die "$f doesn't have a namespace defined" if (not defined $ns or $ns eq 'SKIP_THIS_CLASS');
    eval {
      my $struct = process_file($file, $f);
      my $content = process_api("Aws::$ns", $struct);
      #print $content;
      write_file("auto-lib/Aws/${ns}.pm", $content);
    };
    if ($@) { warn $@ }
  }
}

sub process_file {
  my ($file, $api) = @_;
  my $text = read_file( $file );
  return from_json($text);
}


sub process_api {
  my ($api, $struct) = @_;

  my $type = $struct->{type} or die "Type of API call not found";

  my $overrides = { 'Aws::EC2' => 'EC2' };
  $type = $overrides->{ $api } if (defined $overrides->{ $api });

  my $class_maker = "AWS::API::Builder::${type}";
  load $class_maker;

  my $c = $class_maker->new(struct => $struct, api => $api);

  #p $c;

  my $out = $c->process_api;

  #p $c;

  return $out;
}

