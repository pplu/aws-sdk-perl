# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeGameSessionDetailsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_GameSessionDetail/;
  has GameSessionDetails => (is => 'ro', isa => ArrayRef[GameLift_GameSessionDetail]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GameSessionDetails' => {
                                         'type' => 'ArrayRef[GameLift_GameSessionDetail]',
                                         'class' => 'Paws::GameLift::GameSessionDetail'
                                       },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeGameSessionDetailsOutput

=head1 ATTRIBUTES


=head2 GameSessionDetails => ArrayRef[GameLift_GameSessionDetail]

Collection of objects containing game session properties and the
protection policy currently in force for each session matching the
request.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;