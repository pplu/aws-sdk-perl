
package Paws::FMS::ListProtocolsListsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProtocolsLists => (is => 'ro', isa => 'ArrayRef[Paws::FMS::ProtocolsListDataSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListProtocolsListsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If you specify a value for C<MaxResults> in your list request, and you
have more objects than the maximum, AWS Firewall Manager returns this
token in the response. You can use this token in subsequent requests to
retrieve the next batch of objects.


=head2 ProtocolsLists => ArrayRef[L<Paws::FMS::ProtocolsListDataSummary>]

An array of C<ProtocolsListDataSummary> objects.


=head2 _request_id => Str


=cut

1;