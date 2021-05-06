
package Paws::ServiceCatalog::ListProvisioningArtifactsOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactDetails => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisioningArtifactDetail]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListProvisioningArtifactsOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProvisioningArtifactDetails => ArrayRef[L<Paws::ServiceCatalog::ProvisioningArtifactDetail>]

Information about the provisioning artifacts.


=head2 _request_id => Str


=cut

1;