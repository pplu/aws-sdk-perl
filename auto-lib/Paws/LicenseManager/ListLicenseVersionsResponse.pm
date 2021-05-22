
package Paws::LicenseManager::ListLicenseVersionsResponse;
  use Moose;
  has Licenses => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::License]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListLicenseVersionsResponse

=head1 ATTRIBUTES


=head2 Licenses => ArrayRef[L<Paws::LicenseManager::License>]

License details.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;