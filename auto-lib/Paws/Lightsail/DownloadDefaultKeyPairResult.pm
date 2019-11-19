# Generated from json/callresult_class.tt

package Paws::Lightsail::DownloadDefaultKeyPairResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw//;
  has PrivateKeyBase64 => (is => 'ro', isa => Str);
  has PublicKeyBase64 => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PrivateKeyBase64' => 'privateKeyBase64',
                       'PublicKeyBase64' => 'publicKeyBase64'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PrivateKeyBase64' => {
                                       'type' => 'Str'
                                     },
               'PublicKeyBase64' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DownloadDefaultKeyPairResult

=head1 ATTRIBUTES


=head2 PrivateKeyBase64 => Str

A base64-encoded RSA private key.


=head2 PublicKeyBase64 => Str

A base64-encoded public key of the C<ssh-rsa> type.


=head2 _request_id => Str


=cut

1;