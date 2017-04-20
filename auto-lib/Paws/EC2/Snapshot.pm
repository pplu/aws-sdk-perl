
package Paws::EC2::Snapshot;
  use Moose;
  has DataEncryptionKeyId => (is => 'ro', isa => 'Str', request_name => 'dataEncryptionKeyId', traits => ['NameInRequest',]);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest',]);
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest',]);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest',]);
  has OwnerAlias => (is => 'ro', isa => 'Str', request_name => 'ownerAlias', traits => ['NameInRequest',]);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest',]);
  has Progress => (is => 'ro', isa => 'Str', request_name => 'progress', traits => ['NameInRequest',]);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest',]);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest',]);
  has StateMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest',]);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest',]);
  has VolumeId => (is => 'ro', isa => 'Str', request_name => 'volumeId', traits => ['NameInRequest',]);
  has VolumeSize => (is => 'ro', isa => 'Int', request_name => 'volumeSize', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Snapshot

=head1 ATTRIBUTES


=head2 DataEncryptionKeyId => Str

The data encryption key identifier for the snapshot. This value is a
unique identifier that corresponds to the data encryption key that was
used to encrypt the original volume or snapshot copy. Because data
encryption keys are inherited by volumes created from snapshots, and
vice versa, if snapshots share the same data encryption key identifier,
then they belong to the same volume/snapshot lineage. This parameter is
only returned by the DescribeSnapshots API operation.


=head2 Description => Str

The description for the snapshot.


=head2 Encrypted => Bool

Indicates whether the snapshot is encrypted.


=head2 KmsKeyId => Str

The full ARN of the AWS Key Management Service (AWS KMS) customer
master key (CMK) that was used to protect the volume encryption key for
the parent volume.


=head2 OwnerAlias => Str

Value from an Amazon-maintained list (C<amazon> | C<aws-marketplace> |
C<microsoft>) of snapshot owners. Not to be confused with the
user-configured AWS account alias, which is set from the IAM console.


=head2 OwnerId => Str

The AWS account ID of the EBS snapshot owner.


=head2 Progress => Str

The progress of the snapshot, as a percentage.


=head2 SnapshotId => Str

The ID of the snapshot. Each snapshot receives a unique identifier when
it is created.


=head2 StartTime => Str

The time stamp when the snapshot was initiated.


=head2 State => Str

The snapshot state.

Valid values are: C<"pending">, C<"completed">, C<"error">
=head2 StateMessage => Str

Encrypted Amazon EBS snapshots are copied asynchronously. If a snapshot
copy operation fails (for example, if the proper AWS Key Management
Service (AWS KMS) permissions are not obtained) this field displays
error state details to help you diagnose why the error occurred. This
parameter is only returned by the DescribeSnapshots API operation.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the snapshot.


=head2 VolumeId => Str

The ID of the volume that was used to create the snapshot. Snapshots
created by the CopySnapshot action have an arbitrary volume ID that
should not be used for any purpose.


=head2 VolumeSize => Int

The size of the volume, in GiB.


=head2 _request_id => Str


=cut

