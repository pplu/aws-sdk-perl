
package Paws::IAM::UploadSSHPublicKeyResponse;
  use Moose;
  has SSHPublicKey => (is => 'ro', isa => 'Paws::IAM::SSHPublicKey');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UploadSSHPublicKeyResponse

=head1 ATTRIBUTES


=head2 SSHPublicKey => L<Paws::IAM::SSHPublicKey>

Contains information about the SSH public key.


=head2 _request_id => Str


=cut

