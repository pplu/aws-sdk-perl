
package Paws::LicenseManager::ListResourceInventoryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceInventoryList => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::ResourceInventory]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListResourceInventoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for the next set of results.


=head2 ResourceInventoryList => ArrayRef[L<Paws::LicenseManager::ResourceInventory>]

The detailed list of resources.


=head2 _request_id => Str


=cut

1;