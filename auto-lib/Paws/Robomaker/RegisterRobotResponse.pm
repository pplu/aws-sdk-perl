
package Paws::Robomaker::RegisterRobotResponse;
  use Moose;
  has Fleet => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleet');
  has Robot => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'robot');

  has _request_id => (is => 'ro', isa => 'Str');
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

