
package Paws::ServiceQuotas::RequestServiceQuotaIncreaseResponse;
  use Moose;
  has RequestedQuota => (is => 'ro', isa => 'Paws::ServiceQuotas::RequestedServiceQuotaChange');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::RequestServiceQuotaIncreaseResponse

=head1 ATTRIBUTES


=head2 RequestedQuota => L<Paws::ServiceQuotas::RequestedServiceQuotaChange>

Returns a list of service quota requests.


=head2 _request_id => Str


=cut

1;