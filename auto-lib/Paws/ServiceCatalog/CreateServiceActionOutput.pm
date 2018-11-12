
package Paws::ServiceCatalog::CreateServiceActionOutput;
  use Moose;
  has ServiceActionDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::ServiceActionDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateServiceActionOutput

=head1 ATTRIBUTES


=head2 ServiceActionDetail => L<Paws::ServiceCatalog::ServiceActionDetail>

An object containing information about the self-service action.


=head2 _request_id => Str


=cut

1;