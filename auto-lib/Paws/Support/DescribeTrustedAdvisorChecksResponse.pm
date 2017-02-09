
package Paws::Support::DescribeTrustedAdvisorChecksResponse;
  use Moose;
  has Checks => (is => 'ro', isa => 'ArrayRef[Paws::Support::TrustedAdvisorCheckDescription]', traits => ['NameInRequest'], request_name => 'checks' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeTrustedAdvisorChecksResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Checks => ArrayRef[L<Paws::Support::TrustedAdvisorCheckDescription>]

Information about all available Trusted Advisor checks.


=head2 _request_id => Str


=cut

1;