
package Paws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse;
  use Moose;
  has Statuses => (is => 'ro', isa => 'ArrayRef[Paws::Support::TrustedAdvisorCheckRefreshStatus]', traits => ['Unwrapped'], xmlname => 'statuses' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Statuses => ArrayRef[L<Paws::Support::TrustedAdvisorCheckRefreshStatus>]

The refresh status of the specified Trusted Advisor checks.




=cut

1;