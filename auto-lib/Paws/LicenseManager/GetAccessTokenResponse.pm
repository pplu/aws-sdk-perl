
package Paws::LicenseManager::GetAccessTokenResponse;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetAccessTokenResponse

=head1 ATTRIBUTES


=head2 AccessToken => Str

Temporary access token.


=head2 _request_id => Str


=cut

1;