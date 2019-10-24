# Generated from json/callresult_class.tt

package Paws::KMS::GenerateDataKeyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KMS::Types qw//;
  has CiphertextBlob => (is => 'ro', isa => Str);
  has KeyId => (is => 'ro', isa => Str);
  has Plaintext => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'KeyId' => {
                            'type' => 'Str'
                          },
               'Plaintext' => {
                                'type' => 'Str'
                              },
               'CiphertextBlob' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKeyResponse

=head1 ATTRIBUTES


=head2 CiphertextBlob => Str

The encrypted copy of the data key. When you use the HTTP API or the
AWS CLI, the value is Base64-encoded. Otherwise, it is not encoded.


=head2 KeyId => Str

The identifier of the CMK that encrypted the data key.


=head2 Plaintext => Str

The plaintext data key. When you use the HTTP API or the AWS CLI, the
value is Base64-encoded. Otherwise, it is not encoded. Use this data
key to encrypt your data outside of KMS. Then, remove it from memory as
soon as possible.


=head2 _request_id => Str


=cut

1;