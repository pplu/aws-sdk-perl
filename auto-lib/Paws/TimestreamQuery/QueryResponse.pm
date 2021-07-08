
package Paws::TimestreamQuery::QueryResponse;
  use Moose;
  has ColumnInfo => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamQuery::ColumnInfo]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryId => (is => 'ro', isa => 'Str', required => 1);
  has QueryStatus => (is => 'ro', isa => 'Paws::TimestreamQuery::QueryStatus');
  has Rows => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamQuery::Row]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::QueryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ColumnInfo => ArrayRef[L<Paws::TimestreamQuery::ColumnInfo>]

The column data types of the returned result set.


=head2 NextToken => Str

A pagination token that can be used again on a C<Query> call to get the
next set of results.


=head2 B<REQUIRED> QueryId => Str

A unique ID for the given query.


=head2 QueryStatus => L<Paws::TimestreamQuery::QueryStatus>

Information about the status of the query, including progress and bytes
scannned.


=head2 B<REQUIRED> Rows => ArrayRef[L<Paws::TimestreamQuery::Row>]

The result set rows returned by the query.


=head2 _request_id => Str


=cut

1;