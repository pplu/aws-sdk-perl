
package Paws::EC2::KeyPair;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has KeyFingerprint => (is => 'ro', isa => Str);
  has KeyMaterial => (is => 'ro', isa => Str);
  has KeyName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'KeyMaterial' => {
                                  'type' => 'Str'
                                },
               'KeyFingerprint' => {
                                     'type' => 'Str'
                                   },
               'KeyName' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'KeyName' => 'keyName',
                       'KeyFingerprint' => 'keyFingerprint',
                       'KeyMaterial' => 'keyMaterial'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::KeyPair

=head1 ATTRIBUTES


=head2 KeyFingerprint => Str

The SHA-1 digest of the DER encoded private key.


=head2 KeyMaterial => Str

An unencrypted PEM encoded RSA private key.


=head2 KeyName => Str

The name of the key pair.


=head2 _request_id => Str


=cut

