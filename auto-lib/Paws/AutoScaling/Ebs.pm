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

Describes an Amazon EBS volume.

=head1 ATTRIBUTES


=head2 DeleteOnTermination => Bool

  Indicates whether the volume is deleted on instance termination. The
default is C<true>.


=head2 Encrypted => Bool

  Indicates whether the volume should be encrypted. Encrypted EBS volumes
must be attached to instances that support Amazon EBS encryption.
Volumes that are created from encrypted snapshots are automatically
encrypted. There is no way to create an encrypted volume from an
unencrypted snapshot or an unencrypted volume from an encrypted
snapshot. For more information, see Amazon EBS Encryption
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 Iops => Int

  The number of I/O operations per second (IOPS) to provision for the
volume.

Constraint: Required when the volume type is C<io1>.


=head2 SnapshotId => Str

  The ID of the snapshot.


=head2 VolumeSize => Int

  The volume size, in GiB. For C<standard> volumes, specify a value from
1 to 1,024. For C<io1> volumes, specify a value from 4 to 16,384. For
C<gp2> volumes, specify a value from 1 to 16,384. If you specify a
snapshot, the volume size must be equal to or larger than the snapshot
size.

Default: If you create a volume from a snapshot and you don't specify a
volume size, the default is the snapshot size.


=head2 VolumeType => Str

  The volume type. For more information, see Amazon EBS Volume Types
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Valid values: C<standard> | C<io1> | C<gp2>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

