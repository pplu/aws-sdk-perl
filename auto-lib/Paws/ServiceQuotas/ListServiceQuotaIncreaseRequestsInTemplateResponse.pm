
package Paws::ServiceQuotas::ListServiceQuotaIncreaseRequestsInTemplateResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceQuotaIncreaseRequestInTemplateList => (is => 'ro', isa => 'ArrayRef[Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ListServiceQuotaIncreaseRequestsInTemplateResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 ServiceQuotaIncreaseRequestInTemplateList => ArrayRef[L<Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate>]

Information about the quota increase requests.


=head2 _request_id => Str


=cut

1;