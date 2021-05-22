
package Paws::FIS::ListActionsResponse;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::FIS::ActionSummary]', traits => ['NameInRequest'], request_name => 'actions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::ListActionsResponse

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::FIS::ActionSummary>]

The actions.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

