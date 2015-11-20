
package Paws::Support::DescribeTrustedAdvisorCheckSummariesResponse;
  use Moose;
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::Support::TrustedAdvisorCheckSummary]', traits => ['Unwrapped'], xmlname => 'summaries' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeTrustedAdvisorCheckSummariesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Summaries => ArrayRef[L<Paws::Support::TrustedAdvisorCheckSummary>]

  The summary information for the requested Trusted Advisor checks.


=cut

1;