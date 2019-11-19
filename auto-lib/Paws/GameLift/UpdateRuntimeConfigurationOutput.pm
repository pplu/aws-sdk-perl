# Generated from json/callresult_class.tt

package Paws::GameLift::UpdateRuntimeConfigurationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_RuntimeConfiguration/;
  has RuntimeConfiguration => (is => 'ro', isa => GameLift_RuntimeConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RuntimeConfiguration' => {
                                           'class' => 'Paws::GameLift::RuntimeConfiguration',
                                           'type' => 'GameLift_RuntimeConfiguration'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateRuntimeConfigurationOutput

=head1 ATTRIBUTES


=head2 RuntimeConfiguration => GameLift_RuntimeConfiguration

The run-time configuration currently in force. If the update was
successful, this object matches the one in the request.


=head2 _request_id => Str


=cut

1;