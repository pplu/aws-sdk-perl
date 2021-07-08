
package Paws::Kendra::ListQuerySuggestionsBlockListsResponse;
  use Moose;
  has BlockListSummaryItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::QuerySuggestionsBlockListSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListQuerySuggestionsBlockListsResponse

=head1 ATTRIBUTES


=head2 BlockListSummaryItems => ArrayRef[L<Paws::Kendra::QuerySuggestionsBlockListSummary>]

Summary items for a block list.

This includes summary items on the block list ID, block list name, when
the block list was created, when the block list was last updated, and
the count of block words/phrases in the block list.

For information on the current quota limits for block lists, see Quotas
for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).


=head2 NextToken => Str

If the response is truncated, Amazon Kendra returns this token that you
can use in the subsequent request to retrieve the next set of block
lists.


=head2 _request_id => Str


=cut

1;