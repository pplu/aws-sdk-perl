
package Paws::ServiceCatalog::ListProvisioningArtifactsForServiceActionOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactViews => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisioningArtifactView]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListProvisioningArtifactsForServiceActionOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProvisioningArtifactViews => ArrayRef[L<Paws::ServiceCatalog::ProvisioningArtifactView>]

An array of objects with information about product views and
provisioning artifacts.


=head2 _request_id => Str


=cut

1;