
package Paws::ECS::CreateServiceResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has service => (is => 'ro', isa => 'Paws::ECS::Service');

}

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateServiceResponse

=head1 ATTRIBUTES

=head2 service => Paws::ECS::Service

  

The full description of your service following the create call.











=cut

1;