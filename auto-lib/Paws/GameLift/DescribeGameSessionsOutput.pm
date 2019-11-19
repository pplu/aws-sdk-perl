# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeGameSessionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_GameSession/;
  has GameSessions => (is => 'ro', isa => ArrayRef[GameLift_GameSession]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GameSessions' => {
                                   'class' => 'Paws::GameLift::GameSession',
                                   'type' => 'ArrayRef[GameLift_GameSession]'
                                 },
               'NextToken' => {
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

Paws::GameLift::DescribeGameSessionsOutput

=head1 ATTRIBUTES


=head2 GameSessions => ArrayRef[GameLift_GameSession]

Collection of objects containing game session properties for each
session matching the request.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;