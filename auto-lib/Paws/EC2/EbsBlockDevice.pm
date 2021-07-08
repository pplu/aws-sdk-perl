package Paws::EC2::EbsBlockDevice;
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', request_name => 'deleteOnTermination', traits => ['NameInRequest']);
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest']);
  has Iops => (is => 'ro', isa => 'Int', request_name => 'iops', traits => ['NameInRequest']);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has OutpostArn => (is => 'ro', isa => 'Str', request_name => 'outpostArn', traits => ['NameInRequest']);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest']);
  has Throughput => (is => 'ro', isa => 'Int', request_name => 'throughput', traits => ['NameInRequest']);
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
For more information, see Preserving Amazon EBS volumes on instance
termination
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#preserving-volumes-on-termination)
in the I<Amazon EC2 User Guide>.


=head2 Encrypted => Bool

Indicates whether the encryption state of an EBS volume is changed
while being restored from a backing snapshot. The effect of setting the
encryption state to C<true> depends on the volume origin (new or from a
snapshot), starting encryption state, ownership, and whether encryption
by default is enabled. For more information, see Amazon EBS encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-parameters)
in the I<Amazon EC2 User Guide>.

In no case can you remove encryption from an encrypted volume.

Encrypted volumes can only be attached to instances that support Amazon
EBS encryption. For more information, see Supported instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances).

This parameter is not returned by .


=head2 Iops => Int

The number of I/O operations per second (IOPS). For C<gp3>, C<io1>, and
C<io2> volumes, this represents the number of IOPS that are provisioned
for the volume. For C<gp2> volumes, this represents the baseline
performance of the volume and the rate at which the volume accumulates
I/O credits for bursting.

The following are the supported values for each volume type:

=over

=item *

C<gp3>: 3,000-16,000 IOPS

=item *

C<io1>: 100-64,000 IOPS

=item *

C<io2>: 100-64,000 IOPS

=back

For C<io1> and C<io2> volumes, we guarantee 64,000 IOPS only for
Instances built on the Nitro System
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances).
Other instance families guarantee performance up to 32,000 IOPS.

This parameter is required for C<io1> and C<io2> volumes. The default
for C<gp3> volumes is 3,000 IOPS. This parameter is not supported for
C<gp2>, C<st1>, C<sc1>, or C<standard> volumes.


=head2 KmsKeyId => Str

Identifier (key ID, key alias, ID ARN, or alias ARN) for a customer
managed CMK under which the EBS volume is encrypted.

This parameter is only supported on C<BlockDeviceMapping> objects
called by RunInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html),
RequestSpotFleet
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotFleet.html),
and RequestSpotInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html).


=head2 OutpostArn => Str

The ARN of the Outpost on which the snapshot is stored.


=head2 SnapshotId => Str

The ID of the snapshot.


=head2 Throughput => Int

The throughput that the volume supports, in MiB/s.

This parameter is valid only for C<gp3> volumes.

Valid Range: Minimum value of 125. Maximum value of 1000.


=head2 VolumeSize => Int

The size of the volume, in GiBs. You must specify either a snapshot ID
or a volume size. If you specify a snapshot, the default is the
snapshot size. You can specify a volume size that is equal to or larger
than the snapshot size.

The following are the supported volumes sizes for each volume type:

=over

=item *

C<gp2> and C<gp3>:1-16,384

=item *

C<io1> and C<io2>: 4-16,384

=item *

C<st1> and C<sc1>: 125-16,384

=item *

C<standard>: 1-1,024

=back



=head2 VolumeType => Str

The volume type. For more information, see Amazon EBS volume types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon EC2 User Guide>. If the volume type is C<io1> or
C<io2>, you must specify the IOPS that the volume supports.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
