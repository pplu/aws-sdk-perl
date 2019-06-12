
package Paws::SSM::DescribeOpsItemsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OpsItemSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsItemSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeOpsItemsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 OpsItemSummaries => ArrayRef[L<Paws::SSM::OpsItemSummary>]

A list of OpsItems.


=head2 _request_id => Str


=cut

1;