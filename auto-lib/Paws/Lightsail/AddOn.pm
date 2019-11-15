package Paws::Lightsail::AddOn;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has NextSnapshotTimeOfDay => (is => 'ro', isa => 'Str', request_name => 'nextSnapshotTimeOfDay', traits => ['NameInRequest']);
  has SnapshotTimeOfDay => (is => 'ro', isa => 'Str', request_name => 'snapshotTimeOfDay', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AddOn

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::AddOn object:

  $service_obj->Method(Att1 => { Name => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::AddOn object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes an add-on that is enabled for an Amazon Lightsail resource.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the add-on.


=head2 NextSnapshotTimeOfDay => Str

  The next daily time an automatic snapshot will be created.

The time shown is in C<HH:00> format, and in Coordinated Universal Time
(UTC).

The snapshot is automatically created between the time shown and up to
45 minutes after.


=head2 SnapshotTimeOfDay => Str

  The daily time when an automatic snapshot is created.

The time shown is in C<HH:00> format, and in Coordinated Universal Time
(UTC).

The snapshot is automatically created between the time shown and up to
45 minutes after.


=head2 Status => Str

  The status of the add-on.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

