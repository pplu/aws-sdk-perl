package Paws::OpsWorks::RaidArray;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Device => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has MountPoint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NumberOfDisks => (is => 'ro', isa => 'Int');
  has RaidArrayId => (is => 'ro', isa => 'Str');
  has RaidLevel => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int');
  has StackId => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RaidArray

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::RaidArray object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::RaidArray object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Describes an instance's RAID array.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The array's Availability Zone. For more information, see Regions and
Endpoints (http://docs.aws.amazon.com/general/latest/gr/rande.html).


=head2 CreatedAt => Str

  When the RAID array was created.


=head2 Device => Str

  The array's Linux device. For example /dev/mdadm0.


=head2 InstanceId => Str

  The instance ID.


=head2 Iops => Int

  For PIOPS volumes, the IOPS per disk.


=head2 MountPoint => Str

  The array's mount point.


=head2 Name => Str

  The array name.


=head2 NumberOfDisks => Int

  The number of disks in the array.


=head2 RaidArrayId => Str

  The array ID.


=head2 RaidLevel => Int

  The RAID level (http://en.wikipedia.org/wiki/Standard_RAID_levels).


=head2 Size => Int

  The array's size.


=head2 StackId => Str

  The stack ID.


=head2 VolumeType => Str

  The volume type, standard or PIOPS.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

