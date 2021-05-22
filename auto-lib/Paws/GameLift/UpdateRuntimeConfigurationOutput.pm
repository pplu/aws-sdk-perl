
package Paws::GameLift::UpdateRuntimeConfigurationOutput;
  use Moose;
  has RuntimeConfiguration => (is => 'ro', isa => 'Paws::GameLift::RuntimeConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateRuntimeConfigurationOutput

=head1 ATTRIBUTES


=head2 RuntimeConfiguration => L<Paws::GameLift::RuntimeConfiguration>

The runtime configuration currently in use by all instances in the
fleet. If the update was successful, all property changes are shown.


=head2 _request_id => Str


=cut

1;