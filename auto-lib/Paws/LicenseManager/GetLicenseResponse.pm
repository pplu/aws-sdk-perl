
package Paws::LicenseManager::GetLicenseResponse;
  use Moose;
  has License => (is => 'ro', isa => 'Paws::LicenseManager::License');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetLicenseResponse

=head1 ATTRIBUTES


=head2 License => L<Paws::LicenseManager::License>

License details.


=head2 _request_id => Str


=cut

1;