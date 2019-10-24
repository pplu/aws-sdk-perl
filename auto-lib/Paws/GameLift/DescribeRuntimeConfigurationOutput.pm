# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeRuntimeConfigurationOutput;
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

Paws::GameLift::DescribeRuntimeConfigurationOutput

=head1 ATTRIBUTES


=head2 RuntimeConfiguration => GameLift_RuntimeConfiguration

Instructions describing how server processes should be launched and
maintained on each instance in the fleet.


=head2 _request_id => Str


=cut

1;