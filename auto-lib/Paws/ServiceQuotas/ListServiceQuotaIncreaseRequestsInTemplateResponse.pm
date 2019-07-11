
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

If present in the response, this value indicates there's more output
available that what's included in the current response. This can occur
even when the response includes no values at all, such as when you ask
for a filtered view of a very long list. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
continue processing and get the next part of the output. You should
repeat this until the C<NextToken> response element comes back empty
(as C<null>).


=head2 ServiceQuotaIncreaseRequestInTemplateList => ArrayRef[L<Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate>]

Returns the list of values of the quota increase request in the
template.


=head2 _request_id => Str


=cut

1;