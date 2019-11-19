# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeGameSessionQueuesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_GameSessionQueue/;
  has GameSessionQueues => (is => 'ro', isa => ArrayRef[GameLift_GameSessionQueue]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'GameSessionQueues' => {
                                        'type' => 'ArrayRef[GameLift_GameSessionQueue]',
                                        'class' => 'Paws::GameLift::GameSessionQueue'
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

Paws::GameLift::DescribeGameSessionQueuesOutput

=head1 ATTRIBUTES


=head2 GameSessionQueues => ArrayRef[GameLift_GameSessionQueue]

Collection of objects that describes the requested game session queues.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;