
package Paws::IoT::ListThingTypesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ThingTypes => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ThingTypeDefinition]', traits => ['NameInRequest'], request_name => 'thingTypes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or B<null> if there are no
additional results.


=head2 ThingTypes => ArrayRef[L<Paws::IoT::ThingTypeDefinition>]

The thing types.


=head2 _request_id => Str


=cut

