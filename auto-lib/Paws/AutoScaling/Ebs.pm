package Paws::AutoScaling::Ebs;
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::Ebs

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 DeleteOnTermination => Bool

  Indicates whether to delete the volume on instance termination.

Default: C<true>

=head2 Iops => Int

  For Provisioned IOPS (SSD) volumes only. The number of I/O operations
per second (IOPS) to provision for the volume.

Valid values: Range is 100 to 4000.

Default: None

=head2 SnapshotId => Str

  The ID of the snapshot.

=head2 VolumeSize => Int

  The volume size, in gigabytes.

Valid values: If the volume type is C<io1>, the minimum size of the
volume is 10 GiB. If you specify C<SnapshotId> and C<VolumeSize>,
C<VolumeSize> must be equal to or larger than the size of the snapshot.

Default: If you create a volume from a snapshot and you don't specify a
volume size, the default is the size of the snapshot.

Required: Required when the volume type is C<io1>.

=head2 VolumeType => Str

  The volume type.

Valid values: C<standard | io1 | gp2>

Default: C<standard>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

