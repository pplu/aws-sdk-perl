
package Paws::ServiceQuotas::GetRequestedServiceQuotaChangeResponse;
  use Moose;
  has RequestedQuota => (is => 'ro', isa => 'Paws::ServiceQuotas::RequestedServiceQuotaChange');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::GetRequestedServiceQuotaChangeResponse

=head1 ATTRIBUTES


=head2 RequestedQuota => L<Paws::ServiceQuotas::RequestedServiceQuotaChange>

Returns the C<RequestedServiceQuotaChange> object for the specific
increase request.


=head2 _request_id => Str


=cut

1;