package Paws::OpsWorks::EbsBlockDevice;
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::EbsBlockDevice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::EbsBlockDevice object:

  $service_obj->Method(Att1 => { DeleteOnTermination => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::EbsBlockDevice object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteOnTermination

=head1 DESCRIPTION

Describes an Amazon EBS volume. This data type maps directly to the
Amazon EC2 EbsBlockDevice
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html)
data type.

=head1 ATTRIBUTES


=head2 DeleteOnTermination => Bool

  Whether the volume is deleted on instance termination.


=head2 Iops => Int

  The number of I/O operations per second (IOPS) that the volume
supports. For more information, see EbsBlockDevice
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html).


=head2 SnapshotId => Str

  The snapshot ID.


=head2 VolumeSize => Int

  The volume size, in GiB. For more information, see EbsBlockDevice
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html).


=head2 VolumeType => Str

  The volume type. C<gp2> for General Purpose (SSD) volumes, C<io1> for
Provisioned IOPS (SSD) volumes, C<st1> for Throughput Optimized hard
disk drives (HDD), C<sc1> for Cold HDD,and C<standard> for Magnetic
volumes.

If you specify the C<io1> volume type, you must also specify a value
for the C<Iops> attribute. The maximum ratio of provisioned IOPS to
requested volume size (in GiB) is 50:1. AWS uses the default volume
size (in GiB) specified in the AMI attributes to set IOPS to 50 x
(volume size).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

