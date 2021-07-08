
package Paws::ServiceQuotas::ListAWSDefaultServiceQuotasResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Quotas => (is => 'ro', isa => 'ArrayRef[Paws::ServiceQuotas::ServiceQuota]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ListAWSDefaultServiceQuotasResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 Quotas => ArrayRef[L<Paws::ServiceQuotas::ServiceQuota>]

Information about the quotas.


=head2 _request_id => Str


=cut

1;