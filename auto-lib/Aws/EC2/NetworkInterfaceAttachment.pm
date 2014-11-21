package Aws::EC2::NetworkInterfaceAttachment {
  use Moose;
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachmentId');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has DeviceIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'deviceIndex');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceOwnerId');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
}
1;
