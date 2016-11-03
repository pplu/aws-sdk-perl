
package Paws::Support::DescribeTrustedAdvisorCheckResultResponse;
  use Moose;
  has Result => (is => 'ro', isa => 'Paws::Support::TrustedAdvisorCheckResult', traits => ['NameInRequest'], request_name => 'result' );


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeTrustedAdvisorCheckResultResponse

=head1 ATTRIBUTES


=head2 Result => L<Paws::Support::TrustedAdvisorCheckResult>

The detailed results of the Trusted Advisor check.




=cut

1;