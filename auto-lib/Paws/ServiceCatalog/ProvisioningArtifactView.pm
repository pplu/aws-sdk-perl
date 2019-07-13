package Paws::ServiceCatalog::ProvisioningArtifactView;
  use Moose;
  has ProductViewSummary => (is => 'ro', isa => 'Paws::ServiceCatalog::ProductViewSummary');
  has ProvisioningArtifact => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifact');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisioningArtifactView

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisioningArtifactView object:

  $service_obj->Method(Att1 => { ProductViewSummary => $value, ..., ProvisioningArtifact => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisioningArtifactView object:

  $result = $service_obj->Method(...);
  $result->Att1->ProductViewSummary

=head1 DESCRIPTION

An object that contains summary information about a product view and a
provisioning artifact.

=head1 ATTRIBUTES


=head2 ProductViewSummary => L<Paws::ServiceCatalog::ProductViewSummary>

  Summary information about a product view.


=head2 ProvisioningArtifact => L<Paws::ServiceCatalog::ProvisioningArtifact>

  Information about a provisioning artifact. A provisioning artifact is
also known as a product version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

