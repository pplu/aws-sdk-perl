
package Paws::EC2::VolumeAttachment {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Device => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'device');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VolumeAttachment

=head1 ATTRIBUTES

=head2 AttachTime => Str

  

The time stamp when the attachment initiated.









=head2 DeleteOnTermination => Bool

  

Indicates whether the Amazon EBS volume is deleted on instance
termination.









=head2 Device => Str

  

The device name.









=head2 InstanceId => Str

  

The ID of the instance.









=head2 State => Str

  

The attachment state of the volume.









=head2 VolumeId => Str

  

The ID of the volume.











=cut

