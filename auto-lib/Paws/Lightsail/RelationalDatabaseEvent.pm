package Paws::Lightsail::RelationalDatabaseEvent;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'eventCategories', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has Resource => (is => 'ro', isa => 'Str', request_name => 'resource', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::RelationalDatabaseEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::RelationalDatabaseEvent object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., Resource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::RelationalDatabaseEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Describes an event for a database.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The timestamp when the database event was created.


=head2 EventCategories => ArrayRef[Str|Undef]

  The category that the database event belongs to.


=head2 Message => Str

  The message of the database event.


=head2 Resource => Str

  The database that the database event relates to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

