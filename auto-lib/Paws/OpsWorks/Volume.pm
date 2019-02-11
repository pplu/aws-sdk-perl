package Paws::OpsWorks::Volume;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Device => (is => 'ro', isa => 'Str');
  has Ec2VolumeId => (is => 'ro', isa => 'Str');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has MountPoint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RaidArrayId => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::Volume

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::Volume object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::Volume object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Describes an instance's Amazon EBS volume.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The volume Availability Zone. For more information, see Regions and
Endpoints (http://docs.aws.amazon.com/general/latest/gr/rande.html).


=head2 Device => Str

  The device name.


=head2 Ec2VolumeId => Str

  The Amazon EC2 volume ID.


=head2 Encrypted => Bool

  Specifies whether an Amazon EBS volume is encrypted. For more
information, see Amazon EBS Encryption
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html).


=head2 InstanceId => Str

  The instance ID.


=head2 Iops => Int

  For PIOPS volumes, the IOPS per disk.


=head2 MountPoint => Str

  The volume mount point. For example, "/mnt/disk1".


=head2 Name => Str

  The volume name.


=head2 RaidArrayId => Str

  The RAID array ID.


=head2 Region => Str

  The AWS region. For more information about AWS regions, see Regions and
Endpoints (http://docs.aws.amazon.com/general/latest/gr/rande.html).


=head2 Size => Int

  The volume size.


=head2 Status => Str

  The value returned by DescribeVolumes
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumes.html).


=head2 VolumeId => Str

  The volume ID.


=head2 VolumeType => Str

  The volume type. For more information, see Amazon EBS Volume Types
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).

=over

=item *

C<standard> - Magnetic. Magnetic volumes must have a minimum size of 1
GiB and a maximum size of 1024 GiB.

=item *

C<io1> - Provisioned IOPS (SSD). PIOPS volumes must have a minimum size
of 4 GiB and a maximum size of 16384 GiB.

=item *

C<gp2> - General Purpose (SSD). General purpose volumes must have a
minimum size of 1 GiB and a maximum size of 16384 GiB.

=item *

C<st1> - Throughput Optimized hard disk drive (HDD). Throughput
optimized HDD volumes must have a minimum size of 500 GiB and a maximum
size of 16384 GiB.

=item *

C<sc1> - Cold HDD. Cold HDD volumes must have a minimum size of 500 GiB
and a maximum size of 16384 GiB.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

