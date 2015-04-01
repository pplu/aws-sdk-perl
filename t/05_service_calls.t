#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use Paws;
use Test::CustomCredentials;

sub test_params {
  my ($test_params, $request) = @_;

  foreach my $param (keys %$test_params) {
    cmp_ok($request->parameters->{ $param }, 'eq', $test_params->{ $param }, 
           "existant parameter called $param with expected value"
    );
  }
}

my $test_params;
my $aws = Paws->new(config => Paws::SDK::Config->new( caller => 'Test05Caller' ) );
my $ec2 = $aws->service('EC2', region => 'dummy', credentials => Test::CustomCredentials->new);

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

test_params($test_params, $request);

$request = $ec2->RunInstances(
  ImageId => 'ami-XXXXX',
  MaxCount => 1,
  MinCount => 1,
  NetworkInterfaces => [
   { DeviceIndex => 0, Groups => [ 'sg-1', 'sg-2' ] }
  ]
);

$test_params = {
  'ImageId' => 'ami-XXXXX',
  'MaxCount' => 1,
  'MinCount' => 1,
  'NetworkInterface.1.DeviceIndex' => 0,
  'NetworkInterface.1.SecurityGroupId.1' => 'sg-1',
  'NetworkInterface.1.SecurityGroupId.2' => 'sg-2',
};

test_params($test_params, $request);


my $sqs = $aws->service('SQS', endpoint => 'dummy', region => 'dummy', credentials => Test::CustomCredentials->new);

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
  'Entries.1.Id' => 'test_msg_001',
  'Entries.1.MessageBody' => 'test message body 1',
  'Entries.2.Id' => 'test_msg_002',
  'Entries.2.MessageBody' => 'test message body 2',
  'Entries.2.DelaySeconds' => '60',
  'Entries.2.MessageAttribute.1.Name' => 'test_attribute_name_1',
  'Entries.2.MessageAttribute.1.Value.StringValue' => 'test_attribute_value_1',
  'Entries.2.MessageAttribute.1.Value.DataType' => 'String',
};

test_params($test_params, $request);

my $sns = $aws->service('SNS', endpoint => 'dummy', region => 'dummy', credentials => Test::CustomCredentials->new);

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
  'Attributes.entry.1.value' =>  'arn%3Aaws%3Asns%3Aus-west-2%3A123456789012%3Atopicarn',
};

test_params($test_params, $request);


my $ses = $aws->service('SES', endpoint => 'dummy', region => 'dummy', credentials => Test::CustomCredentials->new);

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

test_params($test_params, $request);

$request = $ses->GetIdentityNotificationAttributes(
  Identities => [ 'user@example.com' ]
); 

$test_params = {
  'Identities.member.1' => 'user@example.com',
};

test_params($test_params, $request);

my $cfn = $aws->service('CloudFormation', endpoint => 'dummy', region => 'dummy', credentials => Test::CustomCredentials->new);

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

test_params($test_params, $request);


my $asg = $aws->service('AutoScaling', endpoint => 'dummy', region => 'dummy', credentials => Test::CustomCredentials->new);

$request = $asg->AttachInstances(
  AutoScalingGroupName => 'ASGNAME',
  InstanceIds => [ 'i-012345678', 'i-123456789' ]
);

$test_params = {
  'AutoScalingGroupName' => 'ASGNAME',
  'InstanceIds.member.1' => 'i-012345678', 
  'InstanceIds.member.2' => 'i-123456789'
};

test_params($test_params, $request);


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

test_params($test_params, $request);


done_testing;
