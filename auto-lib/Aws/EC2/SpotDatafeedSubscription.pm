package Aws::EC2::SpotDatafeedSubscription {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bucket');
  has Fault => (is => 'ro', isa => 'Aws::EC2::SpotInstanceStateFault', traits => ['Unwrapped'], xmlname => 'fault');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Prefix => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'prefix');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
}
1
