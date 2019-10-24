
package Paws::Robomaker::DeregisterRobotResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw//;
  has Fleet => (is => 'ro', isa => Str);
  has Robot => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Robot' => {
                            'type' => 'Str'
                          },
               'Fleet' => {
                            'type' => 'Str'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Robot' => 'robot',
                       'Fleet' => 'fleet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DeregisterRobotResponse

=head1 ATTRIBUTES


=head2 Fleet => Str

The Amazon Resource Name (ARN) of the fleet.


=head2 Robot => Str

The Amazon Resource Name (ARN) of the robot.


=head2 _request_id => Str


=cut

