# Generated from json/callresult_class.tt

package Paws::GameLift::CreatePlayerSessionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_PlayerSession/;
  has PlayerSession => (is => 'ro', isa => GameLift_PlayerSession);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PlayerSession' => {
                                    'class' => 'Paws::GameLift::PlayerSession',
                                    'type' => 'GameLift_PlayerSession'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreatePlayerSessionOutput

=head1 ATTRIBUTES


=head2 PlayerSession => GameLift_PlayerSession

Object that describes the newly created player session record.


=head2 _request_id => Str


=cut

1;