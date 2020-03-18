package Paws::IoTThingsGraph::EntityFilter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::EntityFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::EntityFilter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::EntityFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

An object that filters an entity search. Multiple filters function as
OR criteria in the search. For example a search that includes a
C<NAMESPACE> and a C<REFERENCED_ENTITY_ID> filter searches for entities
in the specified namespace that use the entity specified by the value
of C<REFERENCED_ENTITY_ID>.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the entity search filter field. C<REFERENCED_ENTITY_ID>
filters on entities that are used by the entity in the result set. For
example, you can filter on the ID of a property that is used in a
state.


=head2 Value => ArrayRef[Str|Undef]

  An array of string values for the search filter field. Multiple values
function as AND criteria in the search.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

