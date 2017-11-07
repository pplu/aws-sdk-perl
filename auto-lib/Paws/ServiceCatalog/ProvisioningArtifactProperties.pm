package Paws::ServiceCatalog::ProvisioningArtifactProperties;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Info => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactInfo', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisioningArtifactProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisioningArtifactProperties object:

  $service_obj->Method(Att1 => { Description => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisioningArtifactProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Provisioning artifact properties. For example request JSON, see
CreateProvisioningArtifact.

=head1 ATTRIBUTES


=head2 Description => Str

  The text description of the provisioning artifact properties.


=head2 B<REQUIRED> Info => L<Paws::ServiceCatalog::ProvisioningArtifactInfo>

  Additional information about the provisioning artifact properties. When
using this element in a request, you must specify
C<LoadTemplateFromURL>. For more information, see
CreateProvisioningArtifact.


=head2 Name => Str

  The name assigned to the provisioning artifact properties.


=head2 Type => Str

  The type of the provisioning artifact properties. The following
provisioning artifact property types are used by AWS Marketplace
products:

C<MARKETPLACE_AMI> - AMI products.

C<MARKETPLACE_CAR> - CAR (Cluster and AWS Resources) products.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

