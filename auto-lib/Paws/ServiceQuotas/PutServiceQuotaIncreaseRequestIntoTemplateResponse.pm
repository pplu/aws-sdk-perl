
package Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplateResponse;
  use Moose;
  has ServiceQuotaIncreaseRequestInTemplate => (is => 'ro', isa => 'Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplateResponse

=head1 ATTRIBUTES


=head2 ServiceQuotaIncreaseRequestInTemplate => L<Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate>

A structure that contains information about one service quota increase
request.


=head2 _request_id => Str


=cut

1;