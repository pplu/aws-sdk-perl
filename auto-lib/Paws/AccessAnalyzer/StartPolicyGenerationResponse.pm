
package Paws::AccessAnalyzer::StartPolicyGenerationResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::StartPolicyGenerationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The C<JobId> that is returned by the C<StartPolicyGeneration>
operation. The C<JobId> can be used with C<GetGeneratedPolicy> to
retrieve the generated policies or used with C<CancelPolicyGeneration>
to cancel the policy generation request.


=head2 _request_id => Str


=cut

