# Generated from json/callresult_class.tt

package Paws::MTurk::GetAccountBalanceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MTurk::Types qw//;
  has AvailableBalance => (is => 'ro', isa => Str);
  has OnHoldBalance => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AvailableBalance' => {
                                       'type' => 'Str'
                                     },
               'OnHoldBalance' => {
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

Paws::MTurk::GetAccountBalanceResponse

=head1 ATTRIBUTES


=head2 AvailableBalance => Str




=head2 OnHoldBalance => Str




=head2 _request_id => Str


=cut

1;