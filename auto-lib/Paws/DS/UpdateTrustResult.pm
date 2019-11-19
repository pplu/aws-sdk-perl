# Generated from json/callresult_class.tt

package Paws::DS::UpdateTrustResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw//;
  has RequestId => (is => 'ro', isa => Str);
  has TrustId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TrustId' => {
                              'type' => 'Str'
                            },
               'RequestId' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DS::UpdateTrustResult

=head1 ATTRIBUTES


=head2 RequestId => Str




=head2 TrustId => Str

Identifier of the trust relationship.


=head2 _request_id => Str


=cut

1;