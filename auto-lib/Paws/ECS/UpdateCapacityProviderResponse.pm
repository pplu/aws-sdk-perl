
package Paws::ECS::UpdateCapacityProviderResponse;
  use Moose;
  has CapacityProvider => (is => 'ro', isa => 'Paws::ECS::CapacityProvider', traits => ['NameInRequest'], request_name => 'capacityProvider' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateCapacityProviderResponse

=head1 ATTRIBUTES


=head2 CapacityProvider => L<Paws::ECS::CapacityProvider>

Details about the capacity provider.


=head2 _request_id => Str


=cut

1;