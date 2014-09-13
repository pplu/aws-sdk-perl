#!/usr/bin/env perl

use Aws;

my $as = Aws->service('AutoScaling')->new(
  region => 'eu-west-1'
);

$as->CreateLaunchConfiguration(
  ImageId => 'ami-12345678',
  InstanceType => 't1.micro',
  BlockDeviceMappings => [ {
    DeviceName => '/dev/sda1',
    Ebs => {
      DeleteOnTermination => 1,
      VolumeSize => 10,
    }
  } ],
  SecurityGroups => [ 'sg-12345678' ],
  LaunchConfigurationName => 'test_launch_cfg',
  SpotPrice => 0.02,
);
