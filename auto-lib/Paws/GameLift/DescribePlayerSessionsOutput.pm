# Generated from json/callresult_class.tt

package Paws::GameLift::DescribePlayerSessionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_PlayerSession/;
  has NextToken => (is => 'ro', isa => Str);
  has PlayerSessions => (is => 'ro', isa => ArrayRef[GameLift_PlayerSession]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'PlayerSessions' => {
                                     'class' => 'Paws::GameLift::PlayerSession',
                                     'type' => 'ArrayRef[GameLift_PlayerSession]'
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

Paws::GameLift::DescribePlayerSessionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 PlayerSessions => ArrayRef[GameLift_PlayerSession]

Collection of objects containing properties for each player session
that matches the request.


=head2 _request_id => Str


=cut

1;