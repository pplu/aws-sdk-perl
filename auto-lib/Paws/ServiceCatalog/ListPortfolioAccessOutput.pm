
package Paws::ServiceCatalog::ListPortfolioAccessOutput;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextPageToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListPortfolioAccessOutput

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

List of account IDs associated with access to the portfolio.


=head2 NextPageToken => Str

The page token to use to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

1;