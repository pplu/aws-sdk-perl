
package Paws::Greengrass::GetThingRuntimeConfigurationResponse;
  use Moose;
  has RuntimeConfiguration => (is => 'ro', isa => 'Paws::Greengrass::RuntimeConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetThingRuntimeConfigurationResponse

=head1 ATTRIBUTES


=head2 RuntimeConfiguration => L<Paws::Greengrass::RuntimeConfiguration>

Runtime configuration for a thing.


=head2 _request_id => Str


=cut

