
package Paws::DLM::GetLifecyclePolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::DLM::LifecyclePolicy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::GetLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => L<Paws::DLM::LifecyclePolicy>

Detailed information about the lifecycle policy.


=head2 _request_id => Str


=cut

