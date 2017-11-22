package Paws::DMS::Event;
  use Moose;
  has Date => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Message => (is => 'ro', isa => 'Str');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::Event object:

  $service_obj->Method(Att1 => { Date => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->Date

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Date => Str

  The date of the event.


=head2 EventCategories => ArrayRef[Str|Undef]

  The event categories available for the specified source type.


=head2 Message => Str

  The event message.


=head2 SourceIdentifier => Str

  The identifier of the event source. An identifier must begin with a
letter and must contain only ASCII letters, digits, and hyphens; it
cannot end with a hyphen or contain two consecutive hyphens.

Constraints:replication instance, endpoint, migration task


=head2 SourceType => Str

  The type of AWS DMS resource that generates events.

Valid values: replication-instance | endpoint | migration-task



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

