
package Paws::FMS::PutPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::FMS::Policy');
  has PolicyArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::PutPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => L<Paws::FMS::Policy>

The details of the AWS Firewall Manager policy that was created.


=head2 PolicyArn => Str

The Amazon Resource Name (ARN) of the policy that was created.


=head2 _request_id => Str


=cut

1;