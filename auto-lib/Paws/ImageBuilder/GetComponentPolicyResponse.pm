
package Paws::ImageBuilder::GetComponentPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetComponentPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The component policy.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

