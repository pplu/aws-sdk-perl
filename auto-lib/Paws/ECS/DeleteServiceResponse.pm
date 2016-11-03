
package Paws::ECS::DeleteServiceResponse;
  use Moose;
  has Service => (is => 'ro', isa => 'Paws::ECS::Service', traits => ['NameInRequest'], request_name => 'service' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteServiceResponse

=head1 ATTRIBUTES


=head2 Service => L<Paws::ECS::Service>

The full description of the deleted service.




=cut

1;