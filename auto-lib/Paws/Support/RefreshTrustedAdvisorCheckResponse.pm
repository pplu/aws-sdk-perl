
package Paws::Support::RefreshTrustedAdvisorCheckResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::Support::TrustedAdvisorCheckRefreshStatus', traits => ['NameInRequest'], request_name => 'status' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::RefreshTrustedAdvisorCheckResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => L<Paws::Support::TrustedAdvisorCheckRefreshStatus>

The current refresh status for a check, including the amount of time
until the check is eligible for refresh.


=head2 _request_id => Str


=cut

1;