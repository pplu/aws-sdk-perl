
package Paws::Honeycode::BatchUpsertTableRowsResult;
  use Moose;
  has FailedBatchItems => (is => 'ro', isa => 'ArrayRef[Paws::Honeycode::FailedBatchItem]', traits => ['NameInRequest'], request_name => 'failedBatchItems');
  has Rows => (is => 'ro', isa => 'Paws::Honeycode::UpsertRowsResultMap', traits => ['NameInRequest'], request_name => 'rows', required => 1);
  has WorkbookCursor => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'workbookCursor', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::BatchUpsertTableRowsResult

=head1 ATTRIBUTES


=head2 FailedBatchItems => ArrayRef[L<Paws::Honeycode::FailedBatchItem>]

The list of batch items in the request that could not be updated or
appended in the table. Each element in this list contains one item from
the request that could not be updated in the table along with the
reason why that item could not be updated or appended.


=head2 B<REQUIRED> Rows => L<Paws::Honeycode::UpsertRowsResultMap>

A map with the batch item id as the key and the result of the upsert
operation as the value. The result of the upsert operation specifies
whether existing rows were updated or a new row was appended, along
with the list of row ids that were affected.


=head2 B<REQUIRED> WorkbookCursor => Int

The updated workbook cursor after updating or appending rows in the
table.


=head2 _request_id => Str


=cut

