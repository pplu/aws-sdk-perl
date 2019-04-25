
package Paws::LicenseManager::ListUsageForLicenseConfigurationResponse;
  use Moose;
  has LicenseConfigurationUsageList => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::LicenseConfigurationUsage]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListUsageForLicenseConfigurationResponse

=head1 ATTRIBUTES


=head2 LicenseConfigurationUsageList => ArrayRef[L<Paws::LicenseManager::LicenseConfigurationUsage>]

An array of C<LicenseConfigurationUsage> objects.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;