
package Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestedQuotas => (is => 'ro', isa => 'ArrayRef[Paws::ServiceQuotas::RequestedServiceQuotaChange]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 RequestedQuotas => ArrayRef[L<Paws::ServiceQuotas::RequestedServiceQuotaChange>]

Information about the quota increase requests.


=head2 _request_id => Str


=cut

1;