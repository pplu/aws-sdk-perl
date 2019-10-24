# Generated from json/callresult_class.tt

package Paws::KMS::CreateCustomKeyStoreResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KMS::Types qw//;
  has CustomKeyStoreId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CustomKeyStoreId' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateCustomKeyStoreResponse

=head1 ATTRIBUTES


=head2 CustomKeyStoreId => Str

A unique identifier for the new custom key store.


=head2 _request_id => Str


=cut

1;