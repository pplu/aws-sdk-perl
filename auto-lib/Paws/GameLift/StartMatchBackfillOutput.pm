# Generated from json/callresult_class.tt

package Paws::GameLift::StartMatchBackfillOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_MatchmakingTicket/;
  has MatchmakingTicket => (is => 'ro', isa => GameLift_MatchmakingTicket);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MatchmakingTicket' => {
                                        'class' => 'Paws::GameLift::MatchmakingTicket',
                                        'type' => 'GameLift_MatchmakingTicket'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::StartMatchBackfillOutput

=head1 ATTRIBUTES


=head2 MatchmakingTicket => GameLift_MatchmakingTicket

Ticket representing the backfill matchmaking request. This object
includes the information in the request, ticket status, and match
results as generated during the matchmaking process.


=head2 _request_id => Str


=cut

1;