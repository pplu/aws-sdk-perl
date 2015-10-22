
package Paws::ECS::CreateServiceResponse;
  use Moose;
  has Service => (is => 'ro', isa => 'Paws::ECS::Service', traits => ['Unwrapped'], xmlname => 'service' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateServiceResponse

=head1 ATTRIBUTES

=head2 Service => L<Paws::ECS::Service>

  The full description of your service following the create call.


=cut

1;