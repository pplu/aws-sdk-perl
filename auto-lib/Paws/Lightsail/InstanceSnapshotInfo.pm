package Paws::Lightsail::InstanceSnapshotInfo;
  use Moose;
  has FromBlueprintId => (is => 'ro', isa => 'Str', request_name => 'fromBlueprintId', traits => ['NameInRequest']);
  has FromBundleId => (is => 'ro', isa => 'Str', request_name => 'fromBundleId', traits => ['NameInRequest']);
  has FromDiskInfo => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::DiskInfo]', request_name => 'fromDiskInfo', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::InstanceSnapshotInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::InstanceSnapshotInfo object:

  $service_obj->Method(Att1 => { FromBlueprintId => $value, ..., FromDiskInfo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::InstanceSnapshotInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->FromBlueprintId

=head1 DESCRIPTION

Describes an instance snapshot.

=head1 ATTRIBUTES


=head2 FromBlueprintId => Str

  The blueprint ID from which the source instance (e.g.,
C<os_debian_8_3>).


=head2 FromBundleId => Str

  The bundle ID from which the source instance was created (e.g.,
C<micro_1_0>).


=head2 FromDiskInfo => ArrayRef[L<Paws::Lightsail::DiskInfo>]

  A list of objects describing the disks that were attached to the source
instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

