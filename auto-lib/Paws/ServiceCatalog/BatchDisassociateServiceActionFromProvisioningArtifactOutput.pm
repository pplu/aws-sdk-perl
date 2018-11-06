
package Paws::ServiceCatalog::BatchDisassociateServiceActionFromProvisioningArtifactOutput;
  use Moose;
  has FailedServiceActionAssociations => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::FailedServiceActionAssociation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::BatchDisassociateServiceActionFromProvisioningArtifactOutput

=head1 ATTRIBUTES


=head2 FailedServiceActionAssociations => ArrayRef[L<Paws::ServiceCatalog::FailedServiceActionAssociation>]

An object that contains a list of errors, along with information to
help you identify the self-service action.


=head2 _request_id => Str


=cut

1;