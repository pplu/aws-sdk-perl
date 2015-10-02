package Paws::ES::ElasticsearchClusterConfig;
  use Moose;
  has DedicatedMasterCount => (is => 'ro', isa => 'Int');
  has DedicatedMasterEnabled => (is => 'ro', isa => 'Bool');
  has DedicatedMasterType => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceType => (is => 'ro', isa => 'Str');
  has ZoneAwarenessEnabled => (is => 'ro', isa => 'Bool');
1;
