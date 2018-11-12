
package Paws::DLM::GetLifecyclePoliciesResponse;
  use Moose;
  has Policies => (is => 'ro', isa => 'ArrayRef[Paws::DLM::LifecyclePolicySummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::GetLifecyclePoliciesResponse

=head1 ATTRIBUTES


=head2 Policies => ArrayRef[L<Paws::DLM::LifecyclePolicySummary>]

Summary information about the lifecycle policies.


=head2 _request_id => Str


=cut

