
package Paws::Kendra::QueryResult;
  use Moose;
  has FacetResults => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::FacetResult]');
  has QueryId => (is => 'ro', isa => 'Str');
  has ResultItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::QueryResultItem]');
  has TotalNumberOfResults => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::QueryResult

=head1 ATTRIBUTES


=head2 FacetResults => ArrayRef[L<Paws::Kendra::FacetResult>]

Contains the facet results. A C<FacetResult> contains the counts for
each attribute key that was specified in the C<Facets> input parameter.


=head2 QueryId => Str

The unique identifier for the search. You use C<QueryId> to identify
the search when using the feedback API.


=head2 ResultItems => ArrayRef[L<Paws::Kendra::QueryResultItem>]

The results of the search.


=head2 TotalNumberOfResults => Int

The number of items returned by the search. Use this to determine when
you have requested the last set of results.


=head2 _request_id => Str


=cut

1;