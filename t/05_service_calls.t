

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Paws;
use Test::CustomCredentials;
use JSON::MaybeXS;
use XML::Simple;

sub request_has_params {
  my ($test_params, $request) = @_;

  foreach my $param (keys %$test_params) {
    cmp_ok($request->parameters->{ $param }, 'eq', $test_params->{ $param }, 
           "request has a parameter called $param with expected value"
    );
  }
}

sub request_contentjson {
  my ($test_params, $request) = @_;
  
  my $content = $request->content;
  my $datastructure = decode_json($content);

  is_deeply($datastructure, $test_params, 'Request JSON content is equivalent to the expected datastructure');
}

my $test_params;
my $aws = Paws->new(config => { caller => 'Test05Caller', credentials => 'Test::CustomCredentials', region => 'dummy' } );
my $ec2 = $aws->service('EC2');

my $request = $ec2->CreateImage(
  Description => 'Standard Web Server v1.0',
  InstanceId  => 'i-10a64379',
  Name => 'standard-web-server-v1.0',
  BlockDeviceMappings => [
   { DeviceName => '/dev/sdf', Ebs => { SnapshotId => 'snap-1a2b3c4d' } },
   { DeviceName => '/dev/sdg', Ebs => { VolumeSize => 100 } },
   { DeviceName => '/dev/sdc', VirtualName => 'ephemeral0' }
  ]
);

$test_params = {
  'Description' => 'Standard Web Server v1.0',
  'InstanceId' => 'i-10a64379',
  'Name' => 'standard-web-server-v1.0',
  'BlockDeviceMapping.1.DeviceName' => '/dev/sdf',
  'BlockDeviceMapping.1.Ebs.SnapshotId' => 'snap-1a2b3c4d',
  'BlockDeviceMapping.2.DeviceName' => '/dev/sdg',
  'BlockDeviceMapping.2.Ebs.VolumeSize' => 100,
  'BlockDeviceMapping.3.DeviceName' => '/dev/sdc',
  'BlockDeviceMapping.3.VirtualName' => 'ephemeral0'
};

request_has_params($test_params, $request);

$request = $ec2->RunInstances(
  ImageId => 'ami-XXXXX',
  MaxCount => 1,
  MinCount => 1,
  NetworkInterfaces => [
   { DeviceIndex => 0, Groups => [ 'sg-1', 'sg-2' ] }
  ],
  DryRun => 1,
);

$test_params = {
  'ImageId' => 'ami-XXXXX',
  'MaxCount' => 1,
  'MinCount' => 1,
  'NetworkInterface.1.DeviceIndex' => 0,
  'NetworkInterface.1.SecurityGroupId.1' => 'sg-1',
  'NetworkInterface.1.SecurityGroupId.2' => 'sg-2',
  'DryRun' => 'true',
};

my $sqs = $aws->service('SQS');

$request = $sqs->CreateQueue(
  QueueName => 'Paws2AttributeTest', 
  Attributes => {
    DelaySeconds => 10,
    MessageRetentionPeriod => 3600,
    VisibilityTimeout => 10
  }
);

$test_params = {
  'Attribute.1.Name' => 'DelaySeconds',
  'Attribute.1.Value' => 10,
  'Attribute.2.Name' => 'MessageRetentionPeriod',
  'Attribute.2.Value' => 3600,
  'Attribute.3.Name' => 'VisibilityTimeout',
  'Attribute.3.Value' => 10,
  'QueueName' => 'Paws2AttributeTest'
};

request_has_params($test_params, $request);

$request = $sqs->SendMessageBatch(
  QueueUrl => 'http://sqs.us-east-1.amazonaws.com/123456789012/testQueue/',
  Entries => [
    { Id => 'test_msg_001', MessageBody => 'test message body 201' },
    { Id => 'test_msg_002', MessageBody => 'test message body 202', DelaySeconds => 60,
      MessageAttributes => {
         'test_attribute_name_1' => {
           DataType => 'String',
           StringValue => 'test_attribute_value_1',
         },
      }
    },
  ]
);

$test_params = {
  'SendMessageBatchRequestEntry.1.Id' => 'test_msg_001',
  'SendMessageBatchRequestEntry.1.MessageBody' => 'test message body 201',
  'SendMessageBatchRequestEntry.2.Id' => 'test_msg_002',
  'SendMessageBatchRequestEntry.2.MessageBody' => 'test message body 202',
  'SendMessageBatchRequestEntry.2.DelaySeconds' => '60',
  'SendMessageBatchRequestEntry.2.MessageAttribute.1.Name' => 'test_attribute_name_1',
  'SendMessageBatchRequestEntry.2.MessageAttribute.1.Value.StringValue' => 'test_attribute_value_1',
  'SendMessageBatchRequestEntry.2.MessageAttribute.1.Value.DataType' => 'String',
};

request_has_params($test_params, $request);

my $sns = $aws->service('SNS');

$request = $sns->SetPlatformApplicationAttributes(
  Attributes => {
    EventEndpointCreated => 'arn:aws:sns:us-west-2:123456789012:topicarn',
  },
  PlatformApplicationArn => 'arn:aws:sns:us-west-2:123456789012:app/GCM/gcmpushapp',
);

$test_params = {
  'Attributes.entry.1.key' =>  'EventEndpointCreated',
  'PlatformApplicationArn' =>  'arn:aws:sns:us-west-2:123456789012:app/GCM/gcmpushapp',
  'Action' =>  'SetPlatformApplicationAttributes',
  'Attributes.entry.1.value' =>  'arn:aws:sns:us-west-2:123456789012:topicarn',
};

request_has_params($test_params, $request);


my $ses = $aws->service('SES');

$request = $ses->SendEmail(
  Destination => { ToAddresses => [ 'allan@example.com' ] },
  Message => { Body => { Text => { Data => 'body' } }, 
               Subject => { Data => 'Example' },
             },
  Source => 'user@example.com',
);

$test_params = {
  'Destination.ToAddresses.member.1' => 'allan@example.com',
  'Message.Body.Text.Data' => 'body',
  'Message.Subject.Data' => 'Example',
  'Source' => 'user@example.com',
};

request_has_params($test_params, $request);


my $iam = $aws->service('IAM');

$request = $iam->CreateRole(
  AssumeRolePolicyDocument => '{}',
  Path => '/',
  RoleName => 'MyRole'
);

$test_params = {
  AssumeRolePolicyDocument => '{}',
  Path => '/',
  RoleName => 'MyRole'
};

request_has_params($test_params, $request);


$request = $ses->GetIdentityNotificationAttributes(
  Identities => [ 'user@example.com' ]
); 

$test_params = {
  'Identities.member.1' => 'user@example.com',
};

request_has_params($test_params, $request);

my $cfn = $aws->service('CloudFormation');

$request = $cfn->CreateStack(
  StackName => 'MyStack',
  TemplateBody => '[Template Document]',
  NotificationARNs => [ 'arn:aws:sns:us-east-1:1234567890:my-topic' ],
  Parameters => [ {
    ParameterKey => 'AvailabilityZone',
    ParameterValue => 'us-east-1a'
  } ]
);

$test_params = {
  'StackName' => 'MyStack',
  'TemplateBody' => '[Template Document]',
  'NotificationARNs.member.1' => 'arn:aws:sns:us-east-1:1234567890:my-topic',
  'Parameters.member.1.ParameterKey' => 'AvailabilityZone',
  'Parameters.member.1.ParameterValue' => 'us-east-1a'
};

request_has_params($test_params, $request);


my $asg = $aws->service('AutoScaling');

$request = $asg->AttachInstances(
  AutoScalingGroupName => 'ASGNAME',
  InstanceIds => [ 'i-012345678', 'i-123456789' ]
);

$test_params = {
  'AutoScalingGroupName' => 'ASGNAME',
  'InstanceIds.member.1' => 'i-012345678', 
  'InstanceIds.member.2' => 'i-123456789'
};

request_has_params($test_params, $request);

my $elb = $aws->service('ELB');

$request = $elb->ModifyLoadBalancerAttributes(
  LoadBalancerName => 'lbname',
  LoadBalancerAttributes => { CrossZoneLoadBalancing => { Enabled => 1 } },
);

$test_params = {
  'LoadBalancerName' => 'lbname',
  'LoadBalancerAttributes.CrossZoneLoadBalancing.Enabled' => 'true',
};

request_has_params($test_params, $request);

$request = $asg->CreateAutoScalingGroup(
  'AutoScalingGroupName' => 'my-test-asg',
  'AvailabilityZones' => [ 'us-east-1a', 'us-east-1b' ],
  'MinSize' => '2',
  'MaxSize' => '10',
  'DesiredCapacity' => '2',
  'LoadBalancerNames' => [ 'my-test-asg-loadbalancer' ],
  'HealthCheckType' =>  'ELB',
  'HealthCheckGracePeriod' =>  '120',
  'LaunchConfigurationName' =>  'my-test-lc',
);

$test_params = {
  'AutoScalingGroupName' => 'my-test-asg',
  'AvailabilityZones.member.1' => 'us-east-1a',
  'AvailabilityZones.member.2' => 'us-east-1b',
  'MinSize' => '2',
  'MaxSize' => '10',
  'DesiredCapacity' => '2',
  'LoadBalancerNames.member.1' => 'my-test-asg-loadbalancer',
  'HealthCheckType' => 'ELB',
  'HealthCheckGracePeriod' => '120',
  'LaunchConfigurationName' => 'my-test-lc',
  'Version' => '2011-01-01',
  'Action' => 'CreateAutoScalingGroup',
};

request_has_params($test_params, $request);

my $s3 = $aws->service('S3');

$request = $s3->ListObjects(
  Bucket => 'test_bucket',
  Prefix => 'A/Prefix',
  MaxKeys => 5
);

$test_params = {
  prefix => 'A/Prefix',
 'max-keys' => 5,
};

request_has_params($test_params, $request);

$request = $s3->ListObjectsV2(
  Bucket => 'test_bucket',
  Prefix => 'A/Prefix',
  MaxKeys => 5
);

$test_params = {
  prefix => 'A/Prefix',
 'max-keys' => 5,
};

like($request->uri, qr/list-type=2/, 'Found list-type=2 in the URI');
request_has_params($test_params, $request);

$request = $s3->DeleteBucketLifecycle(
  Bucket => 'test_bucket',
);

$test_params = { };

like($request->uri, qr/\?lifecycle/, 'Found lifecycle in the URI');
request_has_params($test_params, $request);

$request = $s3->PutObject(
  Bucket => 'test_bucket',
  Key => 'a/key',
  Body => 'content',
  Metadata => {
    'key1' => 'value1',
    'key2' => 'value2',
  },
);

cmp_ok($request->header('x-amz-meta-key1'), 'eq', 'value1', 'meta key1 has correct value in header');
cmp_ok($request->header('x-amz-meta-key2'), 'eq', 'value2', 'meta key2 has correct value in header');
cmp_ok($request->content, 'eq', 'content', 'content is correct in request');

my $cognito = $aws->service('CognitoIdentity');

$request = $cognito->GetOpenIdTokenForDeveloperIdentity(
  IdentityPoolId => 'eu-west-1:00000000-0000-0000-0000-000000000000',
  Logins => {
    provider_name => 'user_name@x.com'
  }
);

$test_params = {
  Logins => { provider_name => 'user_name@x.com'},
  IdentityPoolId =>"eu-west-1:00000000-0000-0000-0000-000000000000"
};

request_contentjson($test_params, $request);

my $apigw = $aws->service('ApiGateway');

$request = $apigw->ImportApiKeys(
  Body => 'csvdocu',
  FailOnWarnings => 1,
  Format => 'csv',
);

like($request->uri, qr/mode=import/, 'Found mode=import in the URI');

my $dynamo = $aws->service('DynamoDB');

$request = $dynamo->GetItem(
  TableName            => "test_config",
  ProjectionExpression => 'name',
  Key                  => {
    'name' => { S => 'celery.broker_url' }
  }
);

$test_params = {
  TableName => 'test_config',
  ProjectionExpression => 'name',
  Key                  => {
    'name' => { S => 'celery.broker_url' }
  }
};

request_contentjson($test_params, $request);

$request = $dynamo->PutItem(
  TableName => 'my-test',
  Item => {
    'email' => { 'S' => 'e1@test.com' },
    'count' => { 'N' => 33 },
    'things' => {
      'M' => {
        'those' => {
          'L' => [
            {
              'N' => 1
            },
            {
              'N' => 2
            },
            {
              'N' => 3
            }
          ]
        },
        'foo' => {
          'S' => 'bar'
        }
      }
    }
  }
);

$test_params = decode_json('{"Item":{"count":{"N":33},"things":{"M":{"foo":{"S":"bar"},"those":{"L":[{"N":1},{"N":2},{"N":3}]}}},"email":{"S":"e1@test.com"}},"TableName":"my-test"}');

request_contentjson($test_params, $request);

$request = $dynamo->BatchWriteItem(
  RequestItems=>{
    Table => [ 
      { PutRequest => {
          Item => {
            pagekey => { S => 'ho' },
            job_count => { N => '123' },
            drilldown => { S => 'hello' }
          }
        }
      }
    ]
  }
);

$test_params = decode_json('{"RequestItems":{"Table":[{"PutRequest":{"Item":{"pagekey":{"S":"ho"},"job_count":{"N":"123"},"drilldown":{"S":"hello"}}}}]}}');

request_contentjson($test_params, $request);

my $ssm = $aws->service('SSM');

$request = $ssm->SendCommand(
  DocumentName => 'mydoc',
  InstanceIds => [ 'i-12345678' ],
  Parameters => {
    Param1 => [ 'Value1', 'Value2' ],
  }
);

$test_params = decode_json('{"DocumentName":"mydoc","InstanceIds":["i-12345678"],"Parameters":{"Param1":["Value1","Value2"]}}');

request_contentjson($test_params, $request);

$request = $dynamo->BatchGetItem(
  RequestItems => {
    table => { Keys => [ { email => { S => 'e1@test.com' } } , { email => { S => 'e2@test.com' } } ] },
  },
  ReturnConsumedCapacity => 'TOTAL'
);

$test_params = decode_json('{"RequestItems":{"table":{"Keys":[{"email":{"S":"e1@test.com"}},{"email":{"S":"e2@test.com"}}]}},"ReturnConsumedCapacity":"TOTAL"}');

request_contentjson($test_params, $request);

# Some APIs don't want numbers where they expect strings

$request = $dynamo->GetItem(
  TableName            => "test_config",
  ProjectionExpression => 'name',
  Key                  => {
    'name' => { N => 33 }
  }
);

like($request->content, qr/"N":"33"/, "Got N in a JSON string (quoted), and not a JSON number (unquoted)");

my $efs = $aws->service('EFS');

$request = $efs->CreateFileSystem(
  CreationToken => 4,
  PerformanceMode => 'generalPurpose'
);

like($request->content, qr/"CreationToken":"4"/, "Got N in a JSON string (quoted), and not a JSON number (unquoted)");

my $cfn = $aws->service('CloudFront', region => 'us-east-1');

$request = $cfn->CreateInvalidation(
  DistributionId    => 'A999AAA999AAA',
  InvalidationBatch => {
    CallerReference => 'uid',
    Paths           => {
      Quantity => 3,
      Items    => [
        '/object1',
        '/object2',
        '/object3'
      ]
    }   
  }   
);

my $ref = XMLin($request->content);

like($request->url, qr|distribution/A999AAA999AAA/invalidation|, 'URL has the distribution id');

is_deeply(
  $ref,
  {
    Paths => {
      Items => { Path => [ '/object1', '/object2', '/object3' ] },
      Quantity => '3'
    },
    CallerReference => 'uid'
  }
);

done_testing;
