package Paws::EC2::LaunchTemplateEbsBlockDeviceRequest;
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has Throughput => (is => 'ro', isa => 'Int');
  has VolumeSize => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateEbsBlockDeviceRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateEbsBlockDeviceRequest object:

  $service_obj->Method(Att1 => { DeleteOnTermination => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateEbsBlockDeviceRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteOnTermination

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DeleteOnTermination => Bool

Indicates whether the EBS volume is deleted on instance termination.


=head2 Encrypted => Bool

Indicates whether the EBS volume is encrypted. Encrypted volumes can
only be attached to instances that support Amazon EBS encryption. If
you are creating a volume from a snapshot, you can't specify an
encryption value.


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

This parameter is supported for C<io1>, C<io2>, and C<gp3> volumes
only. This parameter is not supported for C<gp2>, C<st1>, C<sc1>, or
C<standard> volumes.


=head2 KmsKeyId => Str

The ARN of the symmetric AWS Key Management Service (AWS KMS) CMK used
for encryption.


=head2 SnapshotId => Str

The ID of the snapshot.


=head2 Throughput => Int

The throughput to provision for a C<gp3> volume, with a maximum of
1,000 MiB/s.

Valid Range: Minimum value of 125. Maximum value of 1000.


=head2 VolumeSize => Int

The size of the volume, in GiBs. You must specify either a snapshot ID
or a volume size. The following are the supported volumes sizes for
each volume type:

=over

=item *

C<gp2> and C<gp3>: 1-16,384

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
in the I<Amazon Elastic Compute Cloud User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
