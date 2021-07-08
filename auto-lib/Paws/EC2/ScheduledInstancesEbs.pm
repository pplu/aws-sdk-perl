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

The number of I/O operations per second (IOPS) to provision for an
C<io1> or C<io2> volume, with a maximum ratio of 50 IOPS/GiB for
C<io1>, and 500 IOPS/GiB for C<io2>. Range is 100 to 64,000 IOPS for
volumes in most Regions. Maximum IOPS of 64,000 is guaranteed only on
instances built on the Nitro System
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances).
Other instance families guarantee performance up to 32,000 IOPS. For
more information, see Amazon EBS volume types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon EC2 User Guide>.

This parameter is valid only for Provisioned IOPS SSD (C<io1> and
C<io2>) volumes.


=head2 SnapshotId => Str

The ID of the snapshot.


=head2 VolumeSize => Int

The size of the volume, in GiB.

Default: If you're creating the volume from a snapshot and don't
specify a volume size, the default is the snapshot size.


=head2 VolumeType => Str

The volume type. C<gp2> for General Purpose SSD, C<io1> or C< io2> for
Provisioned IOPS SSD, Throughput Optimized HDD for C<st1>, Cold HDD for
C<sc1>, or C<standard> for Magnetic.

Default: C<gp2>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
