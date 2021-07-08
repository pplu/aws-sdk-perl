
package Paws::Honeycode::ListTableColumnsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TableColumns => (is => 'ro', isa => 'ArrayRef[Paws::Honeycode::TableColumn]', traits => ['NameInRequest'], request_name => 'tableColumns', required => 1);
  has WorkbookCursor => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'workbookCursor');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::ListTableColumnsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides the pagination token to load the next page if there are more
results matching the request. If a pagination token is not present in
the response, it means that all data matching the request has been
loaded.


=head2 B<REQUIRED> TableColumns => ArrayRef[L<Paws::Honeycode::TableColumn>]

The list of columns in the table.


=head2 WorkbookCursor => Int

Indicates the cursor of the workbook at which the data returned by this
request is read. Workbook cursor keeps increasing with every update and
the increments are not sequential.


=head2 _request_id => Str


=cut

