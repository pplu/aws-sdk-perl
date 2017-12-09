
package Paws::ServiceCatalog::CreateProvisioningArtifactOutput;
  use Moose;
  has Info => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactInfo');
  has ProvisioningArtifactDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactDetail');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateProvisioningArtifactOutput

=head1 ATTRIBUTES


=head2 Info => L<Paws::ServiceCatalog::ProvisioningArtifactInfo>

The URL of the CloudFormation template in Amazon S3, in JSON format.


=head2 ProvisioningArtifactDetail => L<Paws::ServiceCatalog::ProvisioningArtifactDetail>

Information about the provisioning artifact.


=head2 Status => Str

The status of the current request.

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"FAILED">
=head2 _request_id => Str


=cut

1;