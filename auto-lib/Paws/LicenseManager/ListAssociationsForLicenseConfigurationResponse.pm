
package Paws::LicenseManager::ListAssociationsForLicenseConfigurationResponse;
  use Moose;
  has LicenseConfigurationAssociations => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::LicenseConfigurationAssociation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListAssociationsForLicenseConfigurationResponse

=head1 ATTRIBUTES


=head2 LicenseConfigurationAssociations => ArrayRef[L<Paws::LicenseManager::LicenseConfigurationAssociation>]

Information about the associations for the license configuration.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;