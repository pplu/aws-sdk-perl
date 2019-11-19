# Generated from json/callresult_class.tt

package Paws::DS::VerifyTrustResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw//;
  has TrustId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrustId' => {
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

Paws::DS::VerifyTrustResult

=head1 ATTRIBUTES


=head2 TrustId => Str

The unique Trust ID of the trust relationship that was verified.


=head2 _request_id => Str


=cut

1;