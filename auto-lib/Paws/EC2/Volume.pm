
package Paws::EC2::Volume;
  use Moo;

  use Types::Standard qw/Str ArrayRef Bool Int/;
  use Paws::EC2::Types qw/EC2_Tag EC2_VolumeAttachment/;
  has Attachments => (is => 'ro', isa => ArrayRef[EC2_VolumeAttachment]);
  has AvailabilityZone => (is => 'ro', isa => Str);
  has CreateTime => (is => 'ro', isa => Str);
  has Encrypted => (is => 'ro', isa => Bool);
  has Iops => (is => 'ro', isa => Int);
  has KmsKeyId => (is => 'ro', isa => Str);
  has Size => (is => 'ro', isa => Int);
  has SnapshotId => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VolumeId => (is => 'ro', isa => Str);
  has VolumeType => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attachments' => {
                                  'class' => 'Paws::EC2::VolumeAttachment',
                                  'type' => 'ArrayRef[EC2_VolumeAttachment]'
                                },
               'State' => {
                            'type' => 'Str'
                          },
               'VolumeType' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Size' => {
                           'type' => 'Int'
                         },
               'Tags' => {
                           'type' => 'ArrayRef[EC2_Tag]',
                           'class' => 'Paws::EC2::Tag'
                         },
               'VolumeId' => {
                               'type' => 'Str'
                             },
               'Iops' => {
                           'type' => 'Int'
                         },
               'Encrypted' => {
                                'type' => 'Bool'
                              },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'SnapshotId' => {
                                 'type' => 'Str'
                               },
               'KmsKeyId' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'VolumeType' => 'volumeType',
                       'Attachments' => 'attachmentSet',
                       'State' => 'status',
                       'Size' => 'size',
                       'Tags' => 'tagSet',
                       'VolumeId' => 'volumeId',
                       'AvailabilityZone' => 'availabilityZone',
                       'SnapshotId' => 'snapshotId',
                       'KmsKeyId' => 'kmsKeyId',
                       'Iops' => 'iops',
                       'CreateTime' => 'createTime',
                       'Encrypted' => 'encrypted'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Volume

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[EC2_VolumeAttachment]

Information about the volume attachments.


=head2 AvailabilityZone => Str

The Availability Zone for the volume.


=head2 CreateTime => Str

The time stamp when volume creation was initiated.


=head2 Encrypted => Bool

Indicates whether the volume is encrypted.


=head2 Iops => Int

The number of I/O operations per second (IOPS) that the volume
supports. For Provisioned IOPS SSD volumes, this represents the number
of IOPS that are provisioned for the volume. For General Purpose SSD
volumes, this represents the baseline performance of the volume and the
rate at which the volume accumulates I/O credits for bursting. For more
information, see Amazon EBS Volume Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Constraints: Range is 100-16,000 IOPS for C<gp2> volumes and 100 to
64,000IOPS for C<io1> volumes, in most Regions. The maximum IOPS for
C<io1> of 64,000 is guaranteed only on Nitro-based instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances).
Other instance families guarantee performance up to 32,000 IOPS.

Condition: This parameter is required for requests to create C<io1>
volumes; it is not used in requests to create C<gp2>, C<st1>, C<sc1>,
or C<standard> volumes.


=head2 KmsKeyId => Str

The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS
KMS) customer master key (CMK) that was used to protect the volume
encryption key for the volume.


=head2 Size => Int

The size of the volume, in GiBs.


=head2 SnapshotId => Str

The snapshot from which the volume was created, if applicable.


=head2 State => Str

The volume state.

Valid values are: C<"creating">, C<"available">, C<"in-use">, C<"deleting">, C<"deleted">, C<"error">
=head2 Tags => ArrayRef[EC2_Tag]

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

