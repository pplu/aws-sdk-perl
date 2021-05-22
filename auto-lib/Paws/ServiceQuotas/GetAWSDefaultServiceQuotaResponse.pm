
package Paws::ServiceQuotas::GetAWSDefaultServiceQuotaResponse;
  use Moose;
  has Quota => (is => 'ro', isa => 'Paws::ServiceQuotas::ServiceQuota');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::GetAWSDefaultServiceQuotaResponse

=head1 ATTRIBUTES


=head2 Quota => L<Paws::ServiceQuotas::ServiceQuota>

Information about the quota.


=head2 _request_id => Str


=cut

1;