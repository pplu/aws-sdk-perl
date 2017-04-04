
package Paws::Support::DescribeTrustedAdvisorCheckSummariesResponse;
  use Moose;
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::Support::TrustedAdvisorCheckSummary]', traits => ['NameInRequest'], request_name => 'summaries' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeTrustedAdvisorCheckSummariesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Summaries => ArrayRef[L<Paws::Support::TrustedAdvisorCheckSummary>]

The summary information for the requested Trusted Advisor checks.


=head2 _request_id => Str


=cut

1;