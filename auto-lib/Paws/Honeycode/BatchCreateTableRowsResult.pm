
package Paws::Honeycode::BatchCreateTableRowsResult;
  use Moose;
  has CreatedRows => (is => 'ro', isa => 'Paws::Honeycode::CreatedRowsMap', traits => ['NameInRequest'], request_name => 'createdRows', required => 1);
  has FailedBatchItems => (is => 'ro', isa => 'ArrayRef[Paws::Honeycode::FailedBatchItem]', traits => ['NameInRequest'], request_name => 'failedBatchItems');
  has WorkbookCursor => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'workbookCursor', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::BatchCreateTableRowsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedRows => L<Paws::Honeycode::CreatedRowsMap>

The map of batch item id to the row id that was created for that item.


=head2 FailedBatchItems => ArrayRef[L<Paws::Honeycode::FailedBatchItem>]

The list of batch items in the request that could not be added to the
table. Each element in this list contains one item from the request
that could not be added to the table along with the reason why that
item could not be added.


=head2 B<REQUIRED> WorkbookCursor => Int

The updated workbook cursor after adding the new rows at the end of the
table.


=head2 _request_id => Str


=cut

