# Generated from json/callresult_class.tt

package Paws::Lightsail::CreateKeyPairResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_Operation Lightsail_KeyPair/;
  has KeyPair => (is => 'ro', isa => Lightsail_KeyPair);
  has Operation => (is => 'ro', isa => Lightsail_Operation);
  has PrivateKeyBase64 => (is => 'ro', isa => Str);
  has PublicKeyBase64 => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PrivateKeyBase64' => {
                                       'type' => 'Str'
                                     },
               'PublicKeyBase64' => {
                                      'type' => 'Str'
                                    },
               'KeyPair' => {
                              'type' => 'Lightsail_KeyPair',
                              'class' => 'Paws::Lightsail::KeyPair'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Operation' => {
                                'type' => 'Lightsail_Operation',
                                'class' => 'Paws::Lightsail::Operation'
                              }
             },
  'NameInRequest' => {
                       'Operation' => 'operation',
                       'KeyPair' => 'keyPair',
                       'PrivateKeyBase64' => 'privateKeyBase64',
                       'PublicKeyBase64' => 'publicKeyBase64'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateKeyPairResult

=head1 ATTRIBUTES


=head2 KeyPair => Lightsail_KeyPair

An array of key-value pairs containing information about the new key
pair you just created.


=head2 Operation => Lightsail_Operation

An array of key-value pairs containing information about the results of
your create key pair request.


=head2 PrivateKeyBase64 => Str

A base64-encoded RSA private key.


=head2 PublicKeyBase64 => Str

A base64-encoded public key of the C<ssh-rsa> type.


=head2 _request_id => Str


=cut

1;