# Generated from json/callresult_class.tt

package Paws::Lightsail::GetKeyPairResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_KeyPair/;
  has KeyPair => (is => 'ro', isa => Lightsail_KeyPair);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KeyPair' => {
                              'class' => 'Paws::Lightsail::KeyPair',
                              'type' => 'Lightsail_KeyPair'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'KeyPair' => 'keyPair'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetKeyPairResult

=head1 ATTRIBUTES


=head2 KeyPair => Lightsail_KeyPair

An array of key-value pairs containing information about the key pair.


=head2 _request_id => Str


=cut

1;