# Generated from json/callresult_class.tt

package Paws::GameLift::UpdateFleetPortSettingsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw//;
  has FleetId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FleetId' => {
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

Paws::GameLift::UpdateFleetPortSettingsOutput

=head1 ATTRIBUTES


=head2 FleetId => Str

Unique identifier for a fleet that was updated.


=head2 _request_id => Str


=cut

1;