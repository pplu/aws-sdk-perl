
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

Information about the AWS accounts with access to the portfolio.


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 _request_id => Str


=cut

1;