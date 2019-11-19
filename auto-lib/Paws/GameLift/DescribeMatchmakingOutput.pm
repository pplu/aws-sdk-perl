# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeMatchmakingOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_MatchmakingTicket/;
  has TicketList => (is => 'ro', isa => ArrayRef[GameLift_MatchmakingTicket]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TicketList' => {
                                 'type' => 'ArrayRef[GameLift_MatchmakingTicket]',
                                 'class' => 'Paws::GameLift::MatchmakingTicket'
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

Paws::GameLift::DescribeMatchmakingOutput

=head1 ATTRIBUTES


=head2 TicketList => ArrayRef[GameLift_MatchmakingTicket]

Collection of existing matchmaking ticket objects matching the request.


=head2 _request_id => Str


=cut

1;