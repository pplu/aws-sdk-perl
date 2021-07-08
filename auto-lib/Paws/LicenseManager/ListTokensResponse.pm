
package Paws::LicenseManager::ListTokensResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tokens => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::TokenData]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListTokensResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for the next set of results.


=head2 Tokens => ArrayRef[L<Paws::LicenseManager::TokenData>]

Received token details.


=head2 _request_id => Str


=cut

1;