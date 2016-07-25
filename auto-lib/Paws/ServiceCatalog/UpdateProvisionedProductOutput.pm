
package Paws::ServiceCatalog::UpdateProvisionedProductOutput;
  use Moose;
  has RecordDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::RecordDetail');


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProvisionedProductOutput

=head1 ATTRIBUTES


=head2 RecordDetail => L<Paws::ServiceCatalog::RecordDetail>

The detailed result of the UpdateProvisionedProduct request, containing
the inputs made to that request, the current state of the request, a
pointer to the ProvisionedProduct object that the request is modifying,
and a list of any errors that the request encountered.




=cut

1;