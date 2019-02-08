package Paws::EC2::EbsBlockDevice;
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', request_name => 'deleteOnTermination', traits => ['NameInRequest']);
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest']);
  has Iops => (is => 'ro', isa => 'Int', request_name => 'iops', traits => ['NameInRequest']);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest']);
  has VolumeSize => (is => 'ro', isa => 'Int', request_name => 'volumeSize', traits => ['NameInRequest']);
  has VolumeType => (is => 'ro', isa => 'Str', request_name => 'volumeType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EbsBlockDevice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::EbsBlockDevice object:

  $service_obj->Method(Att1 => { DeleteOnTermination => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::EbsBlockDevice object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteOnTermination

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DeleteOnTermination => Bool

  Indicates whether the EBS volume is deleted on instance termination.


=head2 Encrypted => Bool

  Indicates whether the EBS volume is encrypted. Encrypted volumes can
only be attached to instances that support Amazon EBS encryption.

If you are creating a volume from a snapshot, you cannot specify an
encryption value. This is because only blank volumes can be encrypted
on creation. If you are creating a snapshot from an existing EBS
volume, you cannot specify an encryption value that differs from that
of the EBS volume. We recommend that you omit the encryption value from
the block device mappings when creating an image from an instance.


=head2 Iops => Int

  The number of I/O operations per second (IOPS) that the volume
supports. For C<io1>, this represents the number of IOPS that are
provisioned for the volume. For C<gp2>, this represents the baseline
performance of the volume and the rate at which the volume accumulates
I/O credits for bursting. For more information about General Purpose
SSD baseline performance, I/O credits, and bursting, see Amazon EBS
Volume Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Constraints: Range is 100-16,000 IOPS for C<gp2> volumes and 100 to
64,000IOPS for C<io1> volumes in most Regions. Maximum C<io1>IOPS of
64,000 is guaranteed only on Nitro-based instances. Other instance
families guarantee performance up to 32,000 IOPS. For more information,
see Amazon EBS Volume Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Condition: This parameter is required for requests to create C<io1>
volumes; it is not used in requests to create C<gp2>, C<st1>, C<sc1>,
or C<standard> volumes.


=head2 KmsKeyId => Str

  Identifier (key ID, key alias, ID ARN, or alias ARN) for a user-managed
CMK under which the EBS volume is encrypted.

This parameter is only supported on C<BlockDeviceMapping> objects
called by RunInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html),
RequestSpotFleet
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotFleet.html),
and RequestSpotInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html).


=head2 SnapshotId => Str

  The ID of the snapshot.


=head2 VolumeSize => Int

  The size of the volume, in GiB.

Constraints: 1-16384 for General Purpose SSD (C<gp2>), 4-16384 for
Provisioned IOPS SSD (C<io1>), 500-16384 for Throughput Optimized HDD
(C<st1>), 500-16384 for Cold HDD (C<sc1>), and 1-1024 for Magnetic
(C<standard>) volumes. If you specify a snapshot, the volume size must
be equal to or larger than the snapshot size.

Default: If you're creating the volume from a snapshot and don't
specify a volume size, the default is the snapshot size.


=head2 VolumeType => Str

  The volume type: C<gp2>, C<io1>, C<st1>, C<sc1>, or C<standard>.

Default: C<standard>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
