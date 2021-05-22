
package Paws::SSM::ListOpsItemRelatedItemsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsItemRelatedItemSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListOpsItemRelatedItemsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 Summaries => ArrayRef[L<Paws::SSM::OpsItemRelatedItemSummary>]

A list of related-item resources for the specified OpsItem.


=head2 _request_id => Str


=cut

1;