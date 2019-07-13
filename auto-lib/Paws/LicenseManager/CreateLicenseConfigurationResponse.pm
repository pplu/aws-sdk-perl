
package Paws::LicenseManager::CreateLicenseConfigurationResponse;
  use Moose;
  has LicenseConfigurationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateLicenseConfigurationResponse

=head1 ATTRIBUTES


=head2 LicenseConfigurationArn => Str

ARN of the license configuration object after its creation.


=head2 _request_id => Str


=cut

1;