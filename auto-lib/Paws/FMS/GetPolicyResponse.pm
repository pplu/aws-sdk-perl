
package Paws::FMS::GetPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::FMS::Policy');
  has PolicyArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => L<Paws::FMS::Policy>

Information about the specified AWS Firewall Manager policy.


=head2 PolicyArn => Str

The Amazon Resource Name (ARN) of the specified policy.


=head2 _request_id => Str


=cut

1;