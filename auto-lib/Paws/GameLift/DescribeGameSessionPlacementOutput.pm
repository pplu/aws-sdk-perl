
package Paws::GameLift::DescribeGameSessionPlacementOutput;
  use Moose;
  has GameSessionPlacement => (is => 'ro', isa => 'Paws::GameLift::GameSessionPlacement');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeGameSessionPlacementOutput

=head1 ATTRIBUTES


=head2 GameSessionPlacement => L<Paws::GameLift::GameSessionPlacement>

Object that describes the requested game session placement.


=head2 _request_id => Str


=cut

1;