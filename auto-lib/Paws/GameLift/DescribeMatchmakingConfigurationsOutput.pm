# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeMatchmakingConfigurationsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_MatchmakingConfiguration/;
  has Configurations => (is => 'ro', isa => ArrayRef[GameLift_MatchmakingConfiguration]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Configurations' => {
                                     'class' => 'Paws::GameLift::MatchmakingConfiguration',
                                     'type' => 'ArrayRef[GameLift_MatchmakingConfiguration]'
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

Paws::GameLift::DescribeMatchmakingConfigurationsOutput

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[GameLift_MatchmakingConfiguration]

Collection of requested matchmaking configuration objects.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;