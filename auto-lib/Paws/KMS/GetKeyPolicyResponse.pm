
package Paws::KMS::GetKeyPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GetKeyPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

A key policy document in JSON format.


=head2 _request_id => Str


=cut

1;