
package Paws::Support::RefreshTrustedAdvisorCheckResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::Support::TrustedAdvisorCheckRefreshStatus', traits => ['Unwrapped'], xmlname => 'status' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Support::RefreshTrustedAdvisorCheckResponse

=head1 ATTRIBUTES

=head2 B<REQUIRED> Status => L<Paws::Support::TrustedAdvisorCheckRefreshStatus>

  The current refresh status for a check, including the amount of time
until the check is eligible for refresh.


=cut

1;