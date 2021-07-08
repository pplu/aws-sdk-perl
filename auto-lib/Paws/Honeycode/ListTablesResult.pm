
package Paws::Honeycode::ListTablesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Tables => (is => 'ro', isa => 'ArrayRef[Paws::Honeycode::Table]', traits => ['NameInRequest'], request_name => 'tables', required => 1);
  has WorkbookCursor => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'workbookCursor');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::ListTablesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides the pagination token to load the next page if there are more
results matching the request. If a pagination token is not present in
the response, it means that all data matching the request has been
loaded.


=head2 B<REQUIRED> Tables => ArrayRef[L<Paws::Honeycode::Table>]

The list of tables in the workbook.


=head2 WorkbookCursor => Int

Indicates the cursor of the workbook at which the data returned by this
request is read. Workbook cursor keeps increasing with every update and
the increments are not sequential.


=head2 _request_id => Str


=cut

