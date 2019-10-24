# Generated from json/callresult_class.tt

package Paws::DS::CreateTrustResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw//;
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
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DS::CreateTrustResult

=head1 ATTRIBUTES


=head2 TrustId => Str

A unique identifier for the trust relationship that was created.


=head2 _request_id => Str


=cut

1;