
package Paws::DLM::CreateLifecyclePolicyResponse;
  use Moose;
  has PolicyId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::CreateLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyId => Str

The identifier of the lifecycle policy.


=head2 _request_id => Str


=cut

