
package Paws::EC2::Snapshot;
  use Moo;

  use Types::Standard qw/Str Bool ArrayRef Int/;
  use Paws::EC2::Types qw/EC2_Tag/;
  has DataEncryptionKeyId => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Encrypted => (is => 'ro', isa => Bool);
  has KmsKeyId => (is => 'ro', isa => Str);
  has OwnerAlias => (is => 'ro', isa => Str);
  has OwnerId => (is => 'ro', isa => Str);
  has Progress => (is => 'ro', isa => Str);
  has SnapshotId => (is => 'ro', isa => Str);
  has StartTime => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has StateMessage => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VolumeId => (is => 'ro', isa => Str);
  has VolumeSize => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataEncryptionKeyId' => {
                                          'type' => 'Str'
                                        },
               'VolumeSize' => {
                                 'type' => 'Int'
                               },
               'SnapshotId' => {
                                 'type' => 'Str'
                               },
               'VolumeId' => {
                               'type' => 'Str'
                             },
               'State' => {
                            'type' => 'Str'
                          },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'StateMessage' => {
                                   'type' => 'Str'
                                 },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'Encrypted' => {
                                'type' => 'Bool'
                              },
               'OwnerAlias' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'Progress' => {
                               'type' => 'Str'
                             },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DataEncryptionKeyId' => 'dataEncryptionKeyId',
                       'VolumeSize' => 'volumeSize',
                       'SnapshotId' => 'snapshotId',
                       'VolumeId' => 'volumeId',
                       'State' => 'status',
                       'OwnerId' => 'ownerId',
                       'StateMessage' => 'statusMessage',
                       'KmsKeyId' => 'kmsKeyId',
                       'Encrypted' => 'encrypted',
                       'OwnerAlias' => 'ownerAlias',
                       'Tags' => 'tagSet',
                       'StartTime' => 'startTime',
                       'Progress' => 'progress',
                       'Description' => 'description'
                     }
}
;
      return $Params_map;
    }

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
only returned by DescribeSnapshots.


=head2 Description => Str

The description for the snapshot.


=head2 Encrypted => Bool

Indicates whether the snapshot is encrypted.


=head2 KmsKeyId => Str

The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS
KMS) customer master key (CMK) that was used to protect the volume
encryption key for the parent volume.


=head2 OwnerAlias => Str

Value from an Amazon-maintained list (C<amazon> | C<self> | C<all> |
C<aws-marketplace> | C<microsoft>) of snapshot owners. Not to be
confused with the user-configured AWS account alias, which is set from
the IAM console.


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
parameter is only returned by DescribeSnapshots.


=head2 Tags => ArrayRef[EC2_Tag]

Any tags assigned to the snapshot.


=head2 VolumeId => Str

The ID of the volume that was used to create the snapshot. Snapshots
created by the CopySnapshot action have an arbitrary volume ID that
should not be used for any purpose.


=head2 VolumeSize => Int

The size of the volume, in GiB.


=head2 _request_id => Str


=cut

