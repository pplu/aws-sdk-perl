
package Paws::IoT::ListThingTypesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ThingTypes => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ThingTypeDefinition]');

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




=cut

