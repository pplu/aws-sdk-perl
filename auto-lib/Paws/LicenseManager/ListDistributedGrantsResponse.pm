
package Paws::LicenseManager::ListDistributedGrantsResponse;
  use Moose;
  has Grants => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Grant]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListDistributedGrantsResponse

=head1 ATTRIBUTES


=head2 Grants => ArrayRef[L<Paws::LicenseManager::Grant>]

Distributed grant details.


=head2 NextToken => Str

Token for the next set of results.


=head2 _request_id => Str


=cut

1;