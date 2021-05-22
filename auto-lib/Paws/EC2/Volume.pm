
package Paws::EC2::Volume;
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VolumeAttachment]', request_name => 'attachmentSet', traits => ['NameInRequest',]);
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest',]);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest',]);
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest',]);
  has FastRestored => (is => 'ro', isa => 'Bool', request_name => 'fastRestored', traits => ['NameInRequest',]);
  has Iops => (is => 'ro', isa => 'Int', request_name => 'iops', traits => ['NameInRequest',]);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest',]);
  has MultiAttachEnabled => (is => 'ro', isa => 'Bool', request_name => 'multiAttachEnabled', traits => ['NameInRequest',]);
  has OutpostArn => (is => 'ro', isa => 'Str', request_name => 'outpostArn', traits => ['NameInRequest',]);
  has Size => (is => 'ro', isa => 'Int', request_name => 'size', traits => ['NameInRequest',]);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest',]);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest',]);
  has Throughput => (is => 'ro', isa => 'Int', request_name => 'throughput', traits => ['NameInRequest',]);
  has VolumeId => (is => 'ro', isa => 'Str', request_name => 'volumeId', traits => ['NameInRequest',]);
  has VolumeType => (is => 'ro', isa => 'Str', request_name => 'volumeType', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Volume

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[L<Paws::EC2::VolumeAttachment>]

Information about the volume attachments.


=head2 AvailabilityZone => Str

The Availability Zone for the volume.


=head2 CreateTime => Str

The time stamp when volume creation was initiated.


=head2 Encrypted => Bool

Indicates whether the volume is encrypted.


=head2 FastRestored => Bool

Indicates whether the volume was created using fast snapshot restore.


=head2 Iops => Int

The number of I/O operations per second (IOPS). For C<gp3>, C<io1>, and
C<io2> volumes, this represents the number of IOPS that are provisioned
for the volume. For C<gp2> volumes, this represents the baseline
performance of the volume and the rate at which the volume accumulates
I/O credits for bursting.


=head2 KmsKeyId => Str

The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS
KMS) customer master key (CMK) that was used to protect the volume
encryption key for the volume.


=head2 MultiAttachEnabled => Bool

Indicates whether Amazon EBS Multi-Attach is enabled.


=head2 OutpostArn => Str

The Amazon Resource Name (ARN) of the Outpost.


=head2 Size => Int

The size of the volume, in GiBs.


=head2 SnapshotId => Str

The snapshot from which the volume was created, if applicable.


=head2 State => Str

The volume state.

Valid values are: C<"creating">, C<"available">, C<"in-use">, C<"deleting">, C<"deleted">, C<"error">
=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the volume.


=head2 Throughput => Int

The throughput that the volume supports, in MiB/s.


=head2 VolumeId => Str

The ID of the volume.


=head2 VolumeType => Str

The volume type.

Valid values are: C<"standard">, C<"io1">, C<"io2">, C<"gp2">, C<"sc1">, C<"st1">, C<"gp3">
=head2 _request_id => Str


=cut

