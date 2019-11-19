# Generated from json/callresult_class.tt

package Paws::KMS::CancelKeyDeletionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KMS::Types qw//;
  has KeyId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'KeyId' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KMS::CancelKeyDeletionResponse

=head1 ATTRIBUTES


=head2 KeyId => Str

The unique identifier of the master key for which deletion is canceled.


=head2 _request_id => Str


=cut

1;