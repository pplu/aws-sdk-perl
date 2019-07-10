
package Paws::IoTThingsGraph::SearchEntitiesResponse;
  use Moose;
  has Descriptions => (is => 'ro', isa => 'ArrayRef[Paws::IoTThingsGraph::EntityDescription]', traits => ['NameInRequest'], request_name => 'descriptions' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SearchEntitiesResponse

=head1 ATTRIBUTES


=head2 Descriptions => ArrayRef[L<Paws::IoTThingsGraph::EntityDescription>]

An array of descriptions for each entity returned in the search result.


=head2 NextToken => Str

The string to specify as C<nextToken> when you request the next page of
results.


=head2 _request_id => Str


=cut

1;