
package Paws::LicenseManager::ExtendLicenseConsumptionResponse;
  use Moose;
  has Expiration => (is => 'ro', isa => 'Str');
  has LicenseConsumptionToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ExtendLicenseConsumptionResponse

=head1 ATTRIBUTES


=head2 Expiration => Str

Date and time at which the license consumption expires.


=head2 LicenseConsumptionToken => Str

License consumption token.


=head2 _request_id => Str


=cut

1;