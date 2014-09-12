package Aws::EC2::BundleTask {
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bundleId');
  has BundleTaskError => (is => 'ro', isa => 'Aws::EC2::BundleTaskError', traits => ['Unwrapped'], xmlname => 'error');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Progress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'progress');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'startTime');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Storage => (is => 'ro', isa => 'Aws::EC2::Storage', traits => ['Unwrapped'], xmlname => 'storage');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateTime');
}
1
