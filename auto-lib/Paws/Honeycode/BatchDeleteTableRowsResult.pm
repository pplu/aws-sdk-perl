
package Paws::Honeycode::BatchDeleteTableRowsResult;
  use Moose;
  has FailedBatchItems => (is => 'ro', isa => 'ArrayRef[Paws::Honeycode::FailedBatchItem]', traits => ['NameInRequest'], request_name => 'failedBatchItems');
  has WorkbookCursor => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'workbookCursor', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::BatchDeleteTableRowsResult

=head1 ATTRIBUTES


=head2 FailedBatchItems => ArrayRef[L<Paws::Honeycode::FailedBatchItem>]

The list of row ids in the request that could not be deleted from the
table. Each element in this list contains one row id from the request
that could not be deleted along with the reason why that item could not
be deleted.


=head2 B<REQUIRED> WorkbookCursor => Int

The updated workbook cursor after deleting the rows from the table.


=head2 _request_id => Str


=cut

