
package Paws::EC2::ImportKeyPairResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has KeyFingerprint => (is => 'ro', isa => Str);
  has KeyName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KeyFingerprint' => {
                                     'type' => 'Str'
                                   },
               'KeyName' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'KeyFingerprint' => 'keyFingerprint',
                       'KeyName' => 'keyName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportKeyPairResult

=head1 ATTRIBUTES


=head2 KeyFingerprint => Str

The MD5 public key fingerprint as specified in section 4 of RFC 4716.


=head2 KeyName => Str

The key pair name you provided.


=head2 _request_id => Str


=cut

