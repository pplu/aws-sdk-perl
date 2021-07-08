
package Paws::Honeycode::GetScreenDataResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Results => (is => 'ro', isa => 'Paws::Honeycode::ResultSetMap', traits => ['NameInRequest'], request_name => 'results', required => 1);
  has WorkbookCursor => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'workbookCursor', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::GetScreenDataResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides the pagination token to load the next page if there are more
results matching the request. If a pagination token is not present in
the response, it means that all data matching the query has been
loaded.


=head2 B<REQUIRED> Results => L<Paws::Honeycode::ResultSetMap>

A map of all the rows on the screen keyed by block name.


=head2 B<REQUIRED> WorkbookCursor => Int

Indicates the cursor of the workbook at which the data returned by this
workbook is read. Workbook cursor keeps increasing with every update
and the increments are not sequential.


=head2 _request_id => Str


=cut

