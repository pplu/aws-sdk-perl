
package Paws::Robomaker::RegisterRobotResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw//;
  has Fleet => (is => 'ro', isa => Str);
  has Robot => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Robot' => 'robot',
                       'Fleet' => 'fleet'
                     },
  'types' => {
               'Fleet' => {
                            'type' => 'Str'
                          },
               'Robot' => {
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::RegisterRobotResponse

=head1 ATTRIBUTES


=head2 Fleet => Str

The Amazon Resource Name (ARN) of the fleet that the robot will join.


=head2 Robot => Str

Information about the robot registration.


=head2 _request_id => Str


=cut

