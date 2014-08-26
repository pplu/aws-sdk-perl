package Aws::CloudSearch::ScalingParameters {
  use Moose;
  with ('AWS::API::ResultParser');
  has DesiredInstanceType => (is => 'ro', isa => 'Str');
  has DesiredPartitionCount => (is => 'ro', isa => 'Int');
  has DesiredReplicationCount => (is => 'ro', isa => 'Int');
}
1
