# Generated from json/callresult_class.tt

package Paws::KMS::GenerateRandomResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KMS::Types qw//;
  has Plaintext => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Plaintext' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateRandomResponse

=head1 ATTRIBUTES


=head2 Plaintext => Str

The random byte string. When you use the HTTP API or the AWS CLI, the
value is Base64-encoded. Otherwise, it is not encoded.


=head2 _request_id => Str


=cut

1;