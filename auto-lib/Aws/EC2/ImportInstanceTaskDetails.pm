package Aws::EC2::ImportInstanceTaskDetails {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Platform => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'platform');
  has Volumes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ImportInstanceVolumeDetailItem]', traits => ['Unwrapped'], xmlname => 'volumes', required => 1);
}
1
