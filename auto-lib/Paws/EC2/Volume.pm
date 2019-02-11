
package Paws::EC2::Volume;
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VolumeAttachment]', request_name => 'attachmentSet', traits => ['NameInRequest',]);
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest',]);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest',]);
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest',]);
  has Iops => (is => 'ro', isa => 'Int', request_name => 'iops', traits => ['NameInRequest',]);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest',]);
  has Size => (is => 'ro', isa => 'Int', request_name => 'size', traits => ['NameInRequest',]);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest',]);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest',]);
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

Indicates whether the volume will be encrypted.


=head2 Iops => Int

The number of I/O operations per second (IOPS) that the volume
supports. For Provisioned IOPS SSD volumes, this represents the number
of IOPS that are provisioned for the volume. For General Purpose SSD
volumes, this represents the baseline performance of the volume and the
rate at which the volume accumulates I/O credits for bursting. For more
information about General Purpose SSD baseline performance, I/O
credits, and bursting, see Amazon EBS Volume Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Constraints: Range is 100-16,000 IOPS for C<gp2> volumes and 100 to
64,000IOPS for C<io1> volumes in most regions. Maximum C<io1>IOPS of
64,000 is guaranteed only on Nitro-based instances. Other instance
families guarantee performance up to 32,000 IOPS. For more information,
see Amazon EBS Volume Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Condition: This parameter is required for requests to create C<io1>
volumes; it is not used in requests to create C<gp2>, C<st1>, C<sc1>,
or C<standard> volumes.


=head2 KmsKeyId => Str

The full ARN of the AWS Key Management Service (AWS KMS) customer
master key (CMK) that was used to protect the volume encryption key for
the volume.


=head2 Size => Int

The size of the volume, in GiBs.


=head2 SnapshotId => Str

The snapshot from which the volume was created, if applicable.


=head2 State => Str

The volume state.

Valid values are: C<"creating">, C<"available">, C<"in-use">, C<"deleting">, C<"deleted">, C<"error">
=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the volume.


=head2 VolumeId => Str

The ID of the volume.


=head2 VolumeType => Str

The volume type. This can be C<gp2> for General Purpose SSD, C<io1> for
Provisioned IOPS SSD, C<st1> for Throughput Optimized HDD, C<sc1> for
Cold HDD, or C<standard> for Magnetic volumes.

Valid values are: C<"standard">, C<"io1">, C<"gp2">, C<"sc1">, C<"st1">
=head2 _request_id => Str


=cut

