#!/usr/bin/env perl

use strict;
use warnings;

use Data::Printer;
use Data::Dumper;
use JSON;
use File::Slurp;

use lib 'builder-lib';

use Module::Runtime qw/require_module/;

my $namespaces = {
  autoscaling => 'AutoScaling',
  cloudformation => 'CloudFormation',
  cloudfront => 'CloudFront',
  cloudsearch => 'CloudSearch',
  cloudsearchdomain => 'CloudSearchDomain',
  cloudtrail => 'CloudTrail',
  cloudwatch => 'CloudWatch',
  codedeploy => 'CodeDeploy',
 'cognito-identity' => 'CognitoIdentity',
 'cognito-sync' => 'CognitoSync',
  config => 'Config',
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
  kms => 'KMS',
  lambda => 'Lambda',
  logs => 'CloudWatchLogs',
  opsworks => 'OpsWorks',
  rds => 'RDS',
  redshift => 'RedShift',
  route53 => 'Route53',
  route53domains => 'Route53Domains',
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
    my @class_defs = grep { -f $_ } glob("$class_dir/*.api.json");
    next if (not @class_defs);
    @class_defs = sort @class_defs;
    my $class_version = pop @class_defs;
    push @files, $class_version;
  }
}

my @failures;
foreach my $file (@files) {
  print "Processing $file\n";
  if (my ($f, $version) = ($file =~ m/aws\/(.*?)\/(.*?)\.json/)){
    my $ns = $namespaces->{ $f };
    die "$f doesn't have a namespace defined" if (not defined $ns or $ns eq 'SKIP_THIS_CLASS');
    eval {
      my $struct = process_file($file, $f);
      my $content = process_api("Paws::$ns", $struct);
      #print $content;
      write_file("auto-lib/Paws/${ns}.pm", $content);
    };
    if ($@) { warn $@; push @failures, "$file $@\n" }
  }
}

print "Summary of fails\n";
print @failures;

sub process_file {
  my ($file, $api) = @_;
  my $text = read_file( $file );
  return from_json($text);
}


sub process_api {
  my ($api, $struct) = @_;

  my $type = $struct->{metadata}->{protocol} or die "Type of API call not found";

  my $overrides = { 'Paws::EC2' => 'EC2' };
  $type = $overrides->{ $api } if (defined $overrides->{ $api });

  my $class_maker = "Paws::API::Builder::${type}";
  require_module $class_maker;

  my $c = $class_maker->new(struct => $struct, api => $api);

  my $out = $c->process_api;

  return $out;
}

