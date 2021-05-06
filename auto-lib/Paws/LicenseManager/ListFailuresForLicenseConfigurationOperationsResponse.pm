
package Paws::LicenseManager::ListFailuresForLicenseConfigurationOperationsResponse;
  use Moose;
  has LicenseOperationFailureList => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::LicenseOperationFailure]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListFailuresForLicenseConfigurationOperationsResponse

=head1 ATTRIBUTES


=head2 LicenseOperationFailureList => ArrayRef[L<Paws::LicenseManager::LicenseOperationFailure>]

License configuration operations that failed.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;