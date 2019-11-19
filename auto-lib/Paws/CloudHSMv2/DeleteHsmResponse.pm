# Generated from json/callresult_class.tt

package Paws::CloudHSMv2::DeleteHsmResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSMv2::Types qw//;
  has HsmId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HsmId' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::DeleteHsmResponse

=head1 ATTRIBUTES


=head2 HsmId => Str

The identifier (ID) of the HSM that was deleted.


=head2 _request_id => Str


=cut

1;