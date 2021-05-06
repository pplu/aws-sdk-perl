
package Paws::ServiceCatalog::DeletePortfolioShareOutput;
  use Moose;
  has PortfolioShareToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DeletePortfolioShareOutput

=head1 ATTRIBUTES


=head2 PortfolioShareToken => Str

The portfolio share unique identifier. This will only be returned if
delete is made to an organization node.


=head2 _request_id => Str


=cut

1;