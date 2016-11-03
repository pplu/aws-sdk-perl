
package Paws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse;
  use Moose;
  has Statuses => (is => 'ro', isa => 'ArrayRef[Paws::Support::TrustedAdvisorCheckRefreshStatus]', traits => ['NameInRequest'], request_name => 'statuses' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Statuses => ArrayRef[L<Paws::Support::TrustedAdvisorCheckRefreshStatus>]

The refresh status of the specified Trusted Advisor checks.




=cut

1;