
package Paws::Detective::ListGraphsResponse;
  use Moose;
  has GraphList => (is => 'ro', isa => 'ArrayRef[Paws::Detective::Graph]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::ListGraphsResponse

=head1 ATTRIBUTES


=head2 GraphList => ArrayRef[L<Paws::Detective::Graph>]

A list of behavior graphs that the account is a master for.


=head2 NextToken => Str

If there are more behavior graphs remaining in the results, then this
is the pagination token to use to request the next page of behavior
graphs.


=head2 _request_id => Str


=cut

