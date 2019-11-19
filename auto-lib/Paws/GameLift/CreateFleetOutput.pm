# Generated from json/callresult_class.tt

package Paws::GameLift::CreateFleetOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_FleetAttributes/;
  has FleetAttributes => (is => 'ro', isa => GameLift_FleetAttributes);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FleetAttributes' => {
                                      'class' => 'Paws::GameLift::FleetAttributes',
                                      'type' => 'GameLift_FleetAttributes'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateFleetOutput

=head1 ATTRIBUTES


=head2 FleetAttributes => GameLift_FleetAttributes

Properties for the newly created fleet.


=head2 _request_id => Str


=cut

1;