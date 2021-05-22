
package Paws::Honeycode::QueryTableRowsResult;
  use Moose;
  has ColumnIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'columnIds', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Rows => (is => 'ro', isa => 'ArrayRef[Paws::Honeycode::TableRow]', traits => ['NameInRequest'], request_name => 'rows', required => 1);
  has WorkbookCursor => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'workbookCursor', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::QueryTableRowsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> ColumnIds => ArrayRef[Str|Undef]

The list of columns in the table whose row data is returned in the
result.


=head2 NextToken => Str

Provides the pagination token to load the next page if there are more
results matching the request. If a pagination token is not present in
the response, it means that all data matching the request has been
loaded.


=head2 B<REQUIRED> Rows => ArrayRef[L<Paws::Honeycode::TableRow>]

The list of rows in the table that match the query filter.


=head2 B<REQUIRED> WorkbookCursor => Int

Indicates the cursor of the workbook at which the data returned by this
request is read. Workbook cursor keeps increasing with every update and
the increments are not sequential.


=head2 _request_id => Str


=cut

