
package Paws::ServiceCatalog::ListOrganizationPortfolioAccessOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has OrganizationNodes => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::OrganizationNode]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListOrganizationPortfolioAccessOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 OrganizationNodes => ArrayRef[L<Paws::ServiceCatalog::OrganizationNode>]

Displays information about the organization nodes.


=head2 _request_id => Str


=cut

1;