
package Paws::LicenseManager::ListLicenseSpecificationsForResourceResponse;
  use Moose;
  has LicenseSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::LicenseSpecification]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListLicenseSpecificationsForResourceResponse

=head1 ATTRIBUTES


=head2 LicenseSpecifications => ArrayRef[L<Paws::LicenseManager::LicenseSpecification>]

License configurations associated with a resource.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;