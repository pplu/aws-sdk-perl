
package Paws::IAM::GetSSHPublicKeyResponse;
  use Moose;
  has SSHPublicKey => (is => 'ro', isa => 'Paws::IAM::SSHPublicKey');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetSSHPublicKeyResponse

=head1 ATTRIBUTES


=head2 SSHPublicKey => L<Paws::IAM::SSHPublicKey>

A structure containing details about the SSH public key.




=cut

