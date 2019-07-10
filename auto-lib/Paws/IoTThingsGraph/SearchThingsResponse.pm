
package Paws::IoTThingsGraph::SearchThingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Things => (is => 'ro', isa => 'ArrayRef[Paws::IoTThingsGraph::Thing]', traits => ['NameInRequest'], request_name => 'things' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SearchThingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string to specify as C<nextToken> when you request the next page of
results.


=head2 Things => ArrayRef[L<Paws::IoTThingsGraph::Thing>]

An array of things in the result set.


=head2 _request_id => Str


=cut

1;