package Paws::AutoScaling::Ebs;
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

Paws::AutoScaling::Ebs

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::Ebs object:

  $service_obj->Method(Att1 => { DeleteOnTermination => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::Ebs object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteOnTermination

=head1 DESCRIPTION

Describes an Amazon EBS volume. Used in combination with
BlockDeviceMapping.

=head1 ATTRIBUTES


=head2 DeleteOnTermination => Bool

  Indicates whether the volume is deleted on instance termination. The
default value is C<true>.


=head2 Encrypted => Bool

  Specifies whether the volume should be encrypted. Encrypted EBS volumes
must be attached to instances that support Amazon EBS encryption.
Volumes that are created from encrypted snapshots are automatically
encrypted. There is no way to create an encrypted volume from an
unencrypted snapshot or an unencrypted volume from an encrypted
snapshot. If your AMI uses encrypted volumes, you can only launch it on
supported instance types. For more information, see Amazon EBS
Encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon EC2 User Guide for Linux Instances>.


=head2 Iops => Int

  The number of I/O operations per second (IOPS) to provision for the
volume. For more information, see Amazon EBS Volume Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon EC2 User Guide for Linux Instances>.

Conditional: This parameter is required when the volume type is C<io1>.
(Not used with C<standard>, C<gp2>, C<st1>, or C<sc1> volumes.)


=head2 SnapshotId => Str

  The ID of the snapshot. This parameter is optional if you specify a
volume size.


=head2 VolumeSize => Int

  The volume size, in GiB.

Constraints: 1-1,024 for C<standard>, 4-16,384 for C<io1>, 1-16,384 for
C<gp2>, and 500-16,384 for C<st1> and C<sc1>. If you specify a
snapshot, the volume size must be equal to or larger than the snapshot
size.

Default: If you create a volume from a snapshot and you don't specify a
volume size, the default is the snapshot size.

At least one of VolumeSize or SnapshotId is required.


=head2 VolumeType => Str

  The volume type, which can be C<standard> for Magnetic, C<io1> for
Provisioned IOPS SSD, C<gp2> for General Purpose SSD, C<st1> for
Throughput Optimized HDD, or C<sc1> for Cold HDD. For more information,
see Amazon EBS Volume Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon EC2 User Guide for Linux Instances>.

Valid values: C<standard> | C<io1> | C<gp2> | C<st1> | C<sc1>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

