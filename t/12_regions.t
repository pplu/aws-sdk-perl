#!/usr/bin/perl

#from tests import unittest, BaseSessionTest, create_session
#import mock
#from nose.tools import assert_equals
#from botocore import regions
#from botocore.exceptions import UnknownEndpointError
#from botocore.exceptions import NoRegionError

# NOTE: sqs endpoint updated to be the CN in the SSL cert because
# a bug in python2.6 prevents subjectAltNames from being parsed
# and subsequently being used in cert validation.
# Same thing is needed for rds.

use JSON;
my $known_regions = <<'EOF';
{
  "us-east-1": {
    "cloudformation": "cloudformation.us-east-1.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "cloudsearch": "cloudsearch.us-east-1.amazonaws.com",
    "cloudtrail": "cloudtrail.us-east-1.amazonaws.com",
    "monitoring": "monitoring.us-east-1.amazonaws.com",
    "dynamodb": "dynamodb.us-east-1.amazonaws.com",
    "ec2": "ec2.us-east-1.amazonaws.com",
    "elasticmapreduce": "elasticmapreduce.us-east-1.amazonaws.com",
    "elasticache": "elasticache.us-east-1.amazonaws.com",
    "rds": "rds.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "email": "email.us-east-1.amazonaws.com",
    "sdb": "sdb.amazonaws.com",
    "sns": "sns.us-east-1.amazonaws.com",
    "sqs": "queue.amazonaws.com",
    "s3": "s3.amazonaws.com",
    "autoscaling": "autoscaling.us-east-1.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.us-east-1.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.us-east-1.amazonaws.com",
    "support": "support.us-east-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.us-east-1.amazonaws.com",
    "swf": "swf.us-east-1.amazonaws.com",
    "glacier": "glacier.us-east-1.amazonaws.com",
    "directconnect": "directconnect.us-east-1.amazonaws.com",
    "datapipeline": "datapipeline.us-east-1.amazonaws.com",
    "redshift": "redshift.us-east-1.amazonaws.com",
    "kinesis": "kinesis.us-east-1.amazonaws.com",
    "opsworks": "opsworks.us-east-1.amazonaws.com",
    "elastictranscoder": "elastictranscoder.us-east-1.amazonaws.com",
  },
  "us-west-1": {
    "cloudformation": "cloudformation.us-west-1.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "cloudsearch": "cloudsearch.us-west-1.amazonaws.com",
    "monitoring": "monitoring.us-west-1.amazonaws.com",
    "dynamodb": "dynamodb.us-west-1.amazonaws.com",
    "ec2": "ec2.us-west-1.amazonaws.com",
    "elasticmapreduce": "us-west-1.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.us-west-1.amazonaws.com",
    "rds": "rds.us-west-1.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.us-west-1.amazonaws.com",
    "sns": "sns.us-west-1.amazonaws.com",
    "sqs": "us-west-1.queue.amazonaws.com",
    "s3": "s3-us-west-1.amazonaws.com",
    "autoscaling": "autoscaling.us-west-1.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.us-west-1.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.us-west-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.us-west-1.amazonaws.com",
    "swf": "swf.us-west-1.amazonaws.com",
    "glacier": "glacier.us-west-1.amazonaws.com",
    "directconnect": "directconnect.us-west-1.amazonaws.com",
    "elastictranscoder": "elastictranscoder.us-west-1.amazonaws.com",
  },
  "us-west-2": {
    "cloudformation": "cloudformation.us-west-2.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "cloudsearch": "cloudsearch.us-west-2.amazonaws.com",
    "cloudtrail": "cloudtrail.us-west-2.amazonaws.com",
    "monitoring": "monitoring.us-west-2.amazonaws.com",
    "dynamodb": "dynamodb.us-west-2.amazonaws.com",
    "ec2": "ec2.us-west-2.amazonaws.com",
    "elasticmapreduce": "us-west-2.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.us-west-2.amazonaws.com",
    "rds": "rds.us-west-2.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.us-west-2.amazonaws.com",
    "sns": "sns.us-west-2.amazonaws.com",
    "sqs": "us-west-2.queue.amazonaws.com",
    "s3": "s3-us-west-2.amazonaws.com",
    "autoscaling": "autoscaling.us-west-2.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.us-west-2.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.us-west-2.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.us-west-2.amazonaws.com",
    "swf": "swf.us-west-2.amazonaws.com",
    "glacier": "glacier.us-west-2.amazonaws.com",
    "directconnect": "directconnect.us-west-2.amazonaws.com",
    "redshift": "redshift.us-west-2.amazonaws.com",
    "elastictranscoder": "elastictranscoder.us-west-2.amazonaws.com",
  },
  "ap-northeast-1": {
    "cloudformation": "cloudformation.ap-northeast-1.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "monitoring": "monitoring.ap-northeast-1.amazonaws.com",
    "dynamodb": "dynamodb.ap-northeast-1.amazonaws.com",
    "ec2": "ec2.ap-northeast-1.amazonaws.com",
    "elasticmapreduce": "ap-northeast-1.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.ap-northeast-1.amazonaws.com",
    "rds": "rds.ap-northeast-1.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.ap-northeast-1.amazonaws.com",
    "sns": "sns.ap-northeast-1.amazonaws.com",
    "sqs": "ap-northeast-1.queue.amazonaws.com",
    "s3": "s3-ap-northeast-1.amazonaws.com",
    "autoscaling": "autoscaling.ap-northeast-1.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.ap-northeast-1.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.ap-northeast-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.ap-northeast-1.amazonaws.com",
    "swf": "swf.ap-northeast-1.amazonaws.com",
    "glacier": "glacier.ap-northeast-1.amazonaws.com",
    "directconnect": "directconnect.ap-northeast-1.amazonaws.com",
    "redshift": "redshift.ap-northeast-1.amazonaws.com",
    "elastictranscoder": "elastictranscoder.ap-northeast-1.amazonaws.com",
  },
  "ap-southeast-1": {
    "cloudformation": "cloudformation.ap-southeast-1.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "cloudsearch": "cloudsearch.ap-southeast-1.amazonaws.com",
    "monitoring": "monitoring.ap-southeast-1.amazonaws.com",
    "dynamodb": "dynamodb.ap-southeast-1.amazonaws.com",
    "ec2": "ec2.ap-southeast-1.amazonaws.com",
    "elasticmapreduce": "ap-southeast-1.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.ap-southeast-1.amazonaws.com",
    "rds": "rds.ap-southeast-1.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.ap-southeast-1.amazonaws.com",
    "sns": "sns.ap-southeast-1.amazonaws.com",
    "sqs": "ap-southeast-1.queue.amazonaws.com",
    "s3": "s3-ap-southeast-1.amazonaws.com",
    "autoscaling": "autoscaling.ap-southeast-1.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.ap-southeast-1.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.ap-southeast-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.ap-southeast-1.amazonaws.com",
    "swf": "swf.ap-southeast-1.amazonaws.com",
    "directconnect": "directconnect.ap-southeast-1.amazonaws.com",
    "redshift": "redshift.ap-southeast-1.amazonaws.com",
    "elastictranscoder": "elastictranscoder.ap-southeast-1.amazonaws.com",
  },
  "ap-southeast-2": {
    "cloudformation": "cloudformation.ap-southeast-2.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "monitoring": "monitoring.ap-southeast-2.amazonaws.com",
    "dynamodb": "dynamodb.ap-southeast-2.amazonaws.com",
    "ec2": "ec2.ap-southeast-2.amazonaws.com",
    "elasticmapreduce": "ap-southeast-2.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.ap-southeast-2.amazonaws.com",
    "rds": "rds.ap-southeast-2.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.ap-southeast-2.amazonaws.com",
    "sns": "sns.ap-southeast-2.amazonaws.com",
    "sqs": "ap-southeast-2.queue.amazonaws.com",
    "s3": "s3-ap-southeast-2.amazonaws.com",
    "autoscaling": "autoscaling.ap-southeast-2.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.ap-southeast-2.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.ap-southeast-2.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.ap-southeast-2.amazonaws.com",
    "swf": "swf.ap-southeast-2.amazonaws.com",
    "glacier": "glacier.ap-southeast-2.amazonaws.com",
    "directconnect": "directconnect.ap-southeast-2.amazonaws.com",
    "redshift": "redshift.ap-southeast-2.amazonaws.com",
  },
  "sa-east-1": {
    "cloudformation": "cloudformation.sa-east-1.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "monitoring": "monitoring.sa-east-1.amazonaws.com",
    "dynamodb": "dynamodb.sa-east-1.amazonaws.com",
    "ec2": "ec2.sa-east-1.amazonaws.com",
    "elasticmapreduce": "sa-east-1.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.sa-east-1.amazonaws.com",
    "rds": "rds.sa-east-1.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.sa-east-1.amazonaws.com",
    "sns": "sns.sa-east-1.amazonaws.com",
    "sqs": "sa-east-1.queue.amazonaws.com",
    "s3": "s3-sa-east-1.amazonaws.com",
    "autoscaling": "autoscaling.sa-east-1.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.sa-east-1.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.sa-east-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.sa-east-1.amazonaws.com",
    "swf": "swf.sa-east-1.amazonaws.com",
    "directconnect": "directconnect.sa-east-1.amazonaws.com",
  },
  "eu-west-1": {
    "cloudformation": "cloudformation.eu-west-1.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "cloudsearch": "cloudsearch.eu-west-1.amazonaws.com",
    "monitoring": "monitoring.eu-west-1.amazonaws.com",
    "dynamodb": "dynamodb.eu-west-1.amazonaws.com",
    "ec2": "ec2.eu-west-1.amazonaws.com",
    "elasticmapreduce": "eu-west-1.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.eu-west-1.amazonaws.com",
    "rds": "rds.eu-west-1.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.eu-west-1.amazonaws.com",
    "sns": "sns.eu-west-1.amazonaws.com",
    "sqs": "eu-west-1.queue.amazonaws.com",
    "s3": "s3-eu-west-1.amazonaws.com",
    "autoscaling": "autoscaling.eu-west-1.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.eu-west-1.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.eu-west-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.eu-west-1.amazonaws.com",
    "swf": "swf.eu-west-1.amazonaws.com",
    "glacier": "glacier.eu-west-1.amazonaws.com",
    "directconnect": "directconnect.eu-west-1.amazonaws.com",
    "redshift": "redshift.eu-west-1.amazonaws.com",
    "elastictranscoder": "elastictranscoder.eu-west-1.amazonaws.com",
  },
  "cn-north-1": {
    "cloudformation": "cloudformation.cn-north-1.amazonaws.com.cn",
    "monitoring": "monitoring.cn-north-1.amazonaws.com.cn",
    "dynamodb": "dynamodb.cn-north-1.amazonaws.com.cn",
    "ec2": "ec2.cn-north-1.amazonaws.com.cn",
    "elasticmapreduce": "elasticmapreduce.cn-north-1.amazonaws.com.cn",
    "elasticache": "elasticache.cn-north-1.amazonaws.com.cn",
    "rds": "rds.cn-north-1.amazonaws.com.cn",
    "sns": "sns.cn-north-1.amazonaws.com.cn",
    "sqs": "cn-north-1.queue.amazonaws.com.cn",
    "s3": "s3.cn-north-1.amazonaws.com.cn",
    "autoscaling": "autoscaling.cn-north-1.amazonaws.com.cn",
    "iam": "iam.cn-north-1.amazonaws.com.cn",
    "sts": "sts.cn-north-1.amazonaws.com.cn",
    "storagegateway": "storagegateway.cn-north-1.amazonaws.com.cn",
    "elasticloadbalancing": "elasticloadbalancing.cn-north-1.amazonaws.com.cn",
    "swf": "swf.cn-north-1.amazonaws.com.cn",
    "glacier": "glacier.cn-north-1.amazonaws.com.cn",
  },
  "us-gov-west-1": {
    "monitoring": "monitoring.us-gov-west-1.amazonaws.com",
    "dynamodb": "dynamodb.us-gov-west-1.amazonaws.com",
    "ec2": "ec2.us-gov-west-1.amazonaws.com",
    "elasticmapreduce": "us-gov-west-1.elasticmapreduce.amazonaws.com",
    "rds": "rds.us-gov-west-1.amazonaws.com",
    "sns": "sns.us-gov-west-1.amazonaws.com",
    "sqs": "us-gov-west-1.queue.amazonaws.com",
    "s3": "s3-us-gov-west-1.amazonaws.com",
    "autoscaling": "autoscaling.us-gov-west-1.amazonaws.com",
    "iam": "iam.us-gov.amazonaws.com",
    "sts": "sts.us-gov-west-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.us-gov-west-1.amazonaws.com",
    "swf": "swf.us-gov-west-1.amazonaws.com",
  },
  "fips-us-gov-west-1": {
    "s3": "s3-fips-us-gov-west-1.amazonaws.com"
  },
  "eu-central-1": {
      "elasticmapreduce": "elasticmapreduce.eu-central-1.amazonaws.com",
  }
}
EOF

#print "$known_regions\n"

use FindBin;
use lib "$FindBin::Bin/../lib";
use Regions;
use Data::Dumper;
my $rules    = "$FindBin::Bin/../data/_endpoints.json";

sub test_known_endpoints {
    my $resolver = EndpointResolver->new( rules => $rules );
    my $json = JSON->new->pretty;
    $json = $json->relaxed([1]);
    my $known_regions = $json->decode($known_regions, { utf8  => 1 });
    for my $region ( keys %$known_regions ) {
      for my $service ( keys $known_regions->{$region} ) {
        my $endpoint = "https://" . $known_regions->{$region}{$service};
        _test_single_service_region($service, $region, $endpoint, $resolver);
      }
    }
}

sub _test_single_service_region {
  my ($service, $region, $endpoint, $resolver ) = @_;
  my $resolver = EndpointResolver->new( rules => $rules );
  my $actual_endpoint = $resolver->construct_endpoint($service, $region);
  if ( defined $actual_endpoint and $actual_endpoint{uri} =~ /^$endpoint$/ ) {
    print "OK $actual_enpoint{uri}\n";
  } else {
    print "ERROR [$actual_endpoint{uri}]\n      [$endpoint]\n"
  }
}

test_known_endpoints();

__DATA__

class TestEndpointHeuristics(unittest.TestCase):

    def create_endpoint_resolver(self, rules):
        return regions.EndpointResolver(rules)

    def test_matches_exact_rule(self):
        resolver = self.create_endpoint_resolver({
            'iam': [
                {'uri': 'https://{service}.us-gov.amazonaws.com',
                 'constraints': [['region', 'startsWith', 'us-gov']]}
            ]
        })
        endpoint = resolver.construct_endpoint(
            service_name='iam', region_name='us-gov-1')
        self.assertEqual(endpoint['uri'], 'https://iam.us-gov.amazonaws.com')
        self.assertEqual(endpoint['properties'], {})

    def test_no_match_throws_exception(self):
        resolver = self.create_endpoint_resolver({
            'iam': [
                {'uri': 'https://{service}.us-gov.amazonaws.com',
                 'constraints': [['region', 'startsWith', 'us-gov']]}
            ]
        })
        with self.assertRaises(UnknownEndpointError):
            resolver.construct_endpoint(service_name='iam',
                                        region_name='not-us-gov-2')

    def test_no_region_throws_specific_error(self):
        resolver = self.create_endpoint_resolver({
            'iam': [
                {'uri': 'https://{service}.us-gov.amazonaws.com',
                 'constraints': [['region', 'startsWith', 'us-gov']]}
            ]
        })
        with self.assertRaises(NoRegionError):
            resolver.construct_endpoint(service_name='iam',
                                        region_name=None)

    def test_use_default_section_if_no_service_name(self):
        resolver = self.create_endpoint_resolver({
            '_default': [
                {'uri': 'https://{service}.us-gov.amazonaws.com',
                 'constraints': [['region', 'startsWith', 'us-gov']]}
            ]
        })
        self.assertEqual(
            resolver.construct_endpoint(service_name='iam',
                                        region_name='us-gov-1')['uri'],
            'https://iam.us-gov.amazonaws.com')

    def test_use_default_section_if_no_service_rule_matches(self):
        resolver = self.create_endpoint_resolver({
            '_default': [
                {"uri":"{scheme}://{service}.{region}.amazonaws.com",
                 "constraints": [
                    ["region", "notEquals", None]
                ]}
            ],
            'iam': [
                {'uri': 'https://{service}.us-gov.amazonaws.com',
                 'constraints': [['region', 'startsWith', 'us-gov']]}
            ]
        })
        self.assertEqual(
            resolver.construct_endpoint(service_name='iam',
                                        region_name='other-region')['uri'],
            'https://iam.other-region.amazonaws.com')

    def test_matches_last_rule(self):
        resolver = self.create_endpoint_resolver({
            "s3":[
                {
                    "uri":"{scheme}://s3.amazonaws.com",
                    "constraints":[
                        ["region", "oneOf", ["us-east-1", None]]
                    ]
                },
                {
                    "uri":"{scheme}://{service}-{region}.amazonaws.com.cn",
                    "constraints":[
                        ["region", "startsWith", "cn-"]
                    ]
                },
                {
                    "uri":"{scheme}://{service}-{region}.amazonaws.com",
                    "constraints": [
                        ["region", "notEquals", None]
                    ]
                }
            ],
        })
        self.assertEqual(
            resolver.construct_endpoint(service_name='s3',
                                        region_name='us-east-1')['uri'],
            'https://s3.amazonaws.com')
        self.assertEqual(
            resolver.construct_endpoint(service_name='s3',
                                        region_name=None)['uri'],
            'https://s3.amazonaws.com')
        self.assertEqual(
            resolver.construct_endpoint(service_name='s3',
                                        region_name='us-west-2')['uri'],
            'https://s3-us-west-2.amazonaws.com')
        self.assertEqual(
            resolver.construct_endpoint(service_name='s3',
                                        region_name='cn-north-1')['uri'],
            'https://s3-cn-north-1.amazonaws.com.cn')

    def test_not_starts_with(self):
        resolver = self.create_endpoint_resolver({
            'iam': [
                {'uri': 'https://route53.amazonaws.com',
                 'constraints': [['region', 'notStartsWith', 'cn-']]}
            ]
        })
        self.assertEqual(
            resolver.construct_endpoint(service_name='iam',
                                        region_name='us-east-1')['uri'],
            'https://route53.amazonaws.com')

    def test_can_add_rule(self):
        # This shows how a customer could add their own rules.
        resolver = self.create_endpoint_resolver({
            'iam': [
                {'uri': 'https://{service}.us-gov.amazonaws.com',
                 'constraints': [['region', 'startsWith', 'us-gov']]}
            ]
        })
        resolver.get_rules_for_service('iam').insert(
            0, {'uri': 'https://my.custom.location',
                'constraints': [['region', 'equals', 'custom-region']]})
        self.assertEqual(
            resolver.construct_endpoint(service_name='iam',
                                        region_name='custom-region')['uri'],
            'https://my.custom.location')

    def test_property_bags_returned(self):
        resolver = self.create_endpoint_resolver({
            'iam': [
                {'uri': 'https://{service}.us-gov.amazonaws.com',
                 'constraints': [['region', 'startsWith', 'us-gov']],
                 'properties': {
                     'signatureVersion': 'v4',
                     'credentialScope': {
                         'region': 'us-east-1'
                     }
                 }}
            ]
        })
        endpoint = resolver.construct_endpoint(
            service_name='iam', region_name='us-gov-1')
        self.assertEqual(endpoint['properties'],
                         {'credentialScope': {'region': 'us-east-1'},
                          'signatureVersion': 'v4'})

