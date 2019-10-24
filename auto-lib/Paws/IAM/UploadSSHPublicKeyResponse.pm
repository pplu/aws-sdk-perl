# Generated from callresult_class.tt

package Paws::IAM::UploadSSHPublicKeyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_SSHPublicKey/;
  has SSHPublicKey => (is => 'ro', isa => IAM_SSHPublicKey);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SSHPublicKey' => {
                                   'class' => 'Paws::IAM::SSHPublicKey',
                                   'type' => 'IAM_SSHPublicKey'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UploadSSHPublicKeyResponse

=head1 ATTRIBUTES


=head2 SSHPublicKey => IAM_SSHPublicKey

Contains information about the SSH public key.


=head2 _request_id => Str


=cut

