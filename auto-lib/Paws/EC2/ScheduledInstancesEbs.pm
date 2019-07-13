package Paws::EC2::ScheduledInstancesEbs;
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ScheduledInstancesEbs

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ScheduledInstancesEbs object:

  $service_obj->Method(Att1 => { DeleteOnTermination => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ScheduledInstancesEbs object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteOnTermination

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DeleteOnTermination => Bool

  Indicates whether the volume is deleted on instance termination.


=head2 Encrypted => Bool

  Indicates whether the volume is encrypted. You can attached encrypted
volumes only to instances that support them.


=head2 Iops => Int

  The number of I/O operations per second (IOPS) that the volume
supports. For io1 volumes, this represents the number of IOPS that are
provisioned for the volume. For C<gp2> volumes, this represents the
baseline performance of the volume and the rate at which the volume
accumulates I/O credits for bursting. For more information about C<gp2>
baseline performance, I/O credits, and bursting, see Amazon EBS Volume
Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Constraint: Range is 100-20000 IOPS for C<io1> volumes and 100-10000
IOPS for C<gp2> volumes.

Condition: This parameter is required for requests to create
C<io1>volumes; it is not used in requests to create C<gp2>, C<st1>,
C<sc1>, or C<standard> volumes.


=head2 SnapshotId => Str

  The ID of the snapshot.


=head2 VolumeSize => Int

  The size of the volume, in GiB.

Default: If you're creating the volume from a snapshot and don't
specify a volume size, the default is the snapshot size.


=head2 VolumeType => Str

  The volume type. C<gp2> for General Purpose SSD, C<io1> for Provisioned
IOPS SSD, Throughput Optimized HDD for C<st1>, Cold HDD for C<sc1>, or
C<standard> for Magnetic.

Default: C<standard>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
