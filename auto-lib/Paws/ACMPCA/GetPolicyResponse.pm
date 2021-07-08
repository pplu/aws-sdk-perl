
package Paws::ACMPCA::GetPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::GetPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The policy attached to the private CA as a JSON document.


=head2 _request_id => Str


=cut

1;