package Paws::EMR::JobFlowInstancesConfig {
  use Moose;
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has HadoopVersion => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Paws::EMR::InstanceGroupConfig]');
  has KeepJobFlowAliveWhenNoSteps => (is => 'ro', isa => 'Bool');
  has MasterInstanceType => (is => 'ro', isa => 'Str');
  has Placement => (is => 'ro', isa => 'Paws::EMR::PlacementType');
  has SlaveInstanceType => (is => 'ro', isa => 'Str');
  has TerminationProtected => (is => 'ro', isa => 'Bool');
}
1;
