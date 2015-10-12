package Paws::EC2::EbsBlockDevice;
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', xmlname => 'deleteOnTermination', traits => ['Unwrapped']);
  has Encrypted => (is => 'ro', isa => 'Bool', xmlname => 'encrypted', traits => ['Unwrapped']);
  has Iops => (is => 'ro', isa => 'Int', xmlname => 'iops', traits => ['Unwrapped']);
  has SnapshotId => (is => 'ro', isa => 'Str', xmlname => 'snapshotId', traits => ['Unwrapped']);
  has VolumeSize => (is => 'ro', isa => 'Int', xmlname => 'volumeSize', traits => ['Unwrapped']);
  has VolumeType => (is => 'ro', isa => 'Str', xmlname => 'volumeType', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EbsBlockDevice

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 DeleteOnTermination => Bool

  

Indicates whether the EBS volume is deleted on instance termination.










=head2 Encrypted => Bool

  

Indicates whether the EBS volume is encrypted. Encrypted Amazon EBS
volumes may only be attached to instances that support Amazon EBS
encryption.










=head2 Iops => Int

  

The number of I/O operations per second (IOPS) that the volume
supports. For Provisioned IOPS (SSD) volumes, this represents the
number of IOPS that are provisioned for the volume. For General Purpose
(SSD) volumes, this represents the baseline performance of the volume
and the rate at which the volume accumulates I/O credits for bursting.
For more information on General Purpose (SSD) baseline performance, I/O
credits, and bursting, see Amazon EBS Volume Types in the I<Amazon
Elastic Compute Cloud User Guide>.

Constraint: Range is 100 to 20000 for Provisioned IOPS (SSD) volumes
and 3 to 10000 for General Purpose (SSD) volumes.

Condition: This parameter is required for requests to create C<io1>
volumes; it is not used in requests to create C<standard> or C<gp2>
volumes.










=head2 SnapshotId => Str

  

The ID of the snapshot.










=head2 VolumeSize => Int

  

The size of the volume, in GiB.

Constraints: C<1-1024> for C<standard> volumes, C<1-16384> for C<gp2>
volumes, and C<4-16384> for C<io1> volumes. If you specify a snapshot,
the volume size must be equal to or larger than the snapshot size.

Default: If you're creating the volume from a snapshot and don't
specify a volume size, the default is the snapshot size.










=head2 VolumeType => Str

  

The volume type. C<gp2> for General Purpose (SSD) volumes, C<io1> for
Provisioned IOPS (SSD) volumes, and C<standard> for Magnetic volumes.

Default: C<standard>












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
