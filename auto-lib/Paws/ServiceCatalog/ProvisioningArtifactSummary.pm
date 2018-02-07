package Paws::ServiceCatalog::ProvisioningArtifactSummary;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactMetadata => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactInfo');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisioningArtifactSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisioningArtifactSummary object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., ProvisioningArtifactMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisioningArtifactSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

Summary information about a provisioning artifact (also known as a
version) for a product.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  The UTC time stamp of the creation time.


=head2 Description => Str

  The description of the provisioning artifact.


=head2 Id => Str

  The identifier of the provisioning artifact.


=head2 Name => Str

  The name of the provisioning artifact.


=head2 ProvisioningArtifactMetadata => L<Paws::ServiceCatalog::ProvisioningArtifactInfo>

  The metadata for the provisioning artifact. This is used with AWS
Marketplace products.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

