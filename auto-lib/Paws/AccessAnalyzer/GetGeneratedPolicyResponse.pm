
package Paws::AccessAnalyzer::GetGeneratedPolicyResponse;
  use Moose;
  has GeneratedPolicyResult => (is => 'ro', isa => 'Paws::AccessAnalyzer::GeneratedPolicyResult', traits => ['NameInRequest'], request_name => 'generatedPolicyResult', required => 1);
  has JobDetails => (is => 'ro', isa => 'Paws::AccessAnalyzer::JobDetails', traits => ['NameInRequest'], request_name => 'jobDetails', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetGeneratedPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GeneratedPolicyResult => L<Paws::AccessAnalyzer::GeneratedPolicyResult>

A C<GeneratedPolicyResult> object that contains the generated policies
and associated details.


=head2 B<REQUIRED> JobDetails => L<Paws::AccessAnalyzer::JobDetails>

A C<GeneratedPolicyDetails> object that contains details about the
generated policy.


=head2 _request_id => Str


=cut

