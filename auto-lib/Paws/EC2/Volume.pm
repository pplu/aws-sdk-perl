
package Paws::EC2::Volume {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VolumeAttachment]', traits => ['Unwrapped'], xmlname => 'attachmentSet');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createTime');
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'encrypted');
  has Iops => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'iops');
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kmsKeyId');
  has Size => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'size');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeType');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Volume

=head1 ATTRIBUTES

=head2 Attachments => ArrayRef[Paws::EC2::VolumeAttachment]

  
=head2 AvailabilityZone => Str

  

The Availability Zone for the volume.









=head2 CreateTime => Str

  

The time stamp when volume creation was initiated.









=head2 Encrypted => Bool

  

Indicates whether the volume is encrypted.









=head2 Iops => Int

  

The number of I/O operations per second (IOPS) that the volume
supports. For Provisioned IOPS (SSD) volumes, this represents the
number of IOPS that are provisioned for the volume. For General Purpose
(SSD) volumes, this represents the baseline performance of the volume
and the rate at which the volume accumulates I/O credits for bursting.
For more information on General Purpose (SSD) baseline performance, I/O
credits, and bursting, see Amazon EBS Volume Types in the I<Amazon
Elastic Compute Cloud User Guide>.

Constraint: Range is 100 to 4000 for Provisioned IOPS (SSD) volumes and
3 to 3072 for General Purpose (SSD) volumes.

Condition: This parameter is required for requests to create C<io1>
volumes; it is not used in requests to create C<standard> or C<gp2>
volumes.









=head2 KmsKeyId => Str

  

The full ARN of the AWS Key Management Service (KMS) Customer Master
Key (CMK) that was used to protect the volume encryption key for the
volume.









=head2 Size => Int

  

The size of the volume, in GiBs.









=head2 SnapshotId => Str

  

The snapshot from which the volume was created, if applicable.









=head2 State => Str

  

The volume state.









=head2 Tags => ArrayRef[Paws::EC2::Tag]

  

Any tags assigned to the volume.









=head2 VolumeId => Str

  

The ID of the volume.









=head2 VolumeType => Str

  

The volume type. This can be C<gp2> for General Purpose (SSD) volumes,
C<io1> for Provisioned IOPS (SSD) volumes, or C<standard> for Magnetic
volumes.











=cut

