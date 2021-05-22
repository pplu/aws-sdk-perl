
package Paws::LicenseManager::GetLicenseUsageResponse;
  use Moose;
  has LicenseUsage => (is => 'ro', isa => 'Paws::LicenseManager::LicenseUsage');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetLicenseUsageResponse

=head1 ATTRIBUTES


=head2 LicenseUsage => L<Paws::LicenseManager::LicenseUsage>

License usage details.


=head2 _request_id => Str


=cut

1;