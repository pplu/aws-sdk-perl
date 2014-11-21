package Aws::EC2::SpotInstanceRequest {
  use Moose;
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZoneGroup');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createTime');
  has Fault => (is => 'ro', isa => 'Aws::EC2::SpotInstanceStateFault', traits => ['Unwrapped'], xmlname => 'fault');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has LaunchGroup => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'launchGroup');
  has LaunchSpecification => (is => 'ro', isa => 'Aws::EC2::LaunchSpecification', traits => ['Unwrapped'], xmlname => 'launchSpecification');
  has LaunchedAvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'launchedAvailabilityZone');
  has ProductDescription => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productDescription');
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestId');
  has SpotPrice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotPrice');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Status => (is => 'ro', isa => 'Aws::EC2::SpotInstanceStatus', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
  has ValidFrom => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'validFrom');
  has ValidUntil => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'validUntil');
}
1;
