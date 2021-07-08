
package Paws::ECS::DeleteCapacityProviderResponse;
  use Moose;
  has CapacityProvider => (is => 'ro', isa => 'Paws::ECS::CapacityProvider', traits => ['NameInRequest'], request_name => 'capacityProvider' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteCapacityProviderResponse

=head1 ATTRIBUTES


=head2 CapacityProvider => L<Paws::ECS::CapacityProvider>

The details of the capacity provider.


=head2 _request_id => Str


=cut

1;