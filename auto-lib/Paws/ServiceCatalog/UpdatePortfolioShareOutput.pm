
package Paws::ServiceCatalog::UpdatePortfolioShareOutput;
  use Moose;
  has PortfolioShareToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdatePortfolioShareOutput

=head1 ATTRIBUTES


=head2 PortfolioShareToken => Str

The token that tracks the status of the C<UpdatePortfolioShare>
operation for external account to account or organizational type
sharing.


=head2 Status => Str

The status of C<UpdatePortfolioShare> operation. You can also obtain
the operation status using C<DescribePortfolioShareStatus> API.

Valid values are: C<"NOT_STARTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"COMPLETED_WITH_ERRORS">, C<"ERROR">
=head2 _request_id => Str


=cut

1;