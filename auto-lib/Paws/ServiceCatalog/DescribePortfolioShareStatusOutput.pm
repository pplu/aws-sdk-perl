
package Paws::ServiceCatalog::DescribePortfolioShareStatusOutput;
  use Moose;
  has OrganizationNodeValue => (is => 'ro', isa => 'Str');
  has PortfolioId => (is => 'ro', isa => 'Str');
  has PortfolioShareToken => (is => 'ro', isa => 'Str');
  has ShareDetails => (is => 'ro', isa => 'Paws::ServiceCatalog::ShareDetails');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribePortfolioShareStatusOutput

=head1 ATTRIBUTES


=head2 OrganizationNodeValue => Str

Organization node identifier. It can be either account id,
organizational unit id or organization id.


=head2 PortfolioId => Str

The portfolio identifier.


=head2 PortfolioShareToken => Str

The token for the portfolio share operation. For example,
C<share-6v24abcdefghi>.


=head2 ShareDetails => L<Paws::ServiceCatalog::ShareDetails>

Information about the portfolio share operation.


=head2 Status => Str

Status of the portfolio share operation.

Valid values are: C<"NOT_STARTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"COMPLETED_WITH_ERRORS">, C<"ERROR">
=head2 _request_id => Str


=cut

1;