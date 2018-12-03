
package Paws::LicenseManager::ListLicenseConfigurationsResponse;
  use Moose;
  has LicenseConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::LicenseConfiguration]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListLicenseConfigurationsResponse

=head1 ATTRIBUTES


=head2 LicenseConfigurations => ArrayRef[L<Paws::LicenseManager::LicenseConfiguration>]

Array of license configuration objects.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;