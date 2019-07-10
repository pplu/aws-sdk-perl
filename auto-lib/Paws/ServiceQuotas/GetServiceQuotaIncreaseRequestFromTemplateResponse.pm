
package Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplateResponse;
  use Moose;
  has ServiceQuotaIncreaseRequestInTemplate => (is => 'ro', isa => 'Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplateResponse

=head1 ATTRIBUTES


=head2 ServiceQuotaIncreaseRequestInTemplate => L<Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate>

This object contains the details about the quota increase request.


=head2 _request_id => Str


=cut

1;