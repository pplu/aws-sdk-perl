
package Paws::ServiceQuotas::GetServiceQuotaResponse;
  use Moose;
  has Quota => (is => 'ro', isa => 'Paws::ServiceQuotas::ServiceQuota');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::GetServiceQuotaResponse

=head1 ATTRIBUTES


=head2 Quota => L<Paws::ServiceQuotas::ServiceQuota>

Returns the ServiceQuota object which contains all values for a quota.


=head2 _request_id => Str


=cut

1;