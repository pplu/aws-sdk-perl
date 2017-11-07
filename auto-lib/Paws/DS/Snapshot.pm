package Paws::DS::Snapshot;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::Snapshot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::Snapshot object:

  $service_obj->Method(Att1 => { DirectoryId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::Snapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->DirectoryId

=head1 DESCRIPTION

Describes a directory snapshot.

=head1 ATTRIBUTES


=head2 DirectoryId => Str

  The directory identifier.


=head2 Name => Str

  The descriptive name of the snapshot.


=head2 SnapshotId => Str

  The snapshot identifier.


=head2 StartTime => Str

  The date and time that the snapshot was taken.


=head2 Status => Str

  The snapshot status.


=head2 Type => Str

  The snapshot type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

