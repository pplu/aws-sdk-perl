
package Paws::Honeycode::BatchCreateTableRows;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has RowsToCreate => (is => 'ro', isa => 'ArrayRef[Paws::Honeycode::CreateRowData]', traits => ['NameInRequest'], request_name => 'rowsToCreate', required => 1);
  has TableId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableId', required => 1);
  has WorkbookId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workbookId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchCreateTableRows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workbooks/{workbookId}/tables/{tableId}/rows/batchcreate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Honeycode::BatchCreateTableRowsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::BatchCreateTableRows - Arguments for method BatchCreateTableRows on L<Paws::Honeycode>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchCreateTableRows on the
L<Amazon Honeycode|Paws::Honeycode> service. Use the attributes of this class
as arguments to method BatchCreateTableRows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchCreateTableRows.

=head1 SYNOPSIS

    my $honeycode = Paws->service('Honeycode');
    my $BatchCreateTableRowsResult = $honeycode->BatchCreateTableRows(
      RowsToCreate => [
        {
          BatchItemId   => 'MyBatchItemId',    # min: 1, max: 64
          CellsToCreate => {
            'MyResourceId' => {
              Fact => 'MyFact',                # max: 8192; OPTIONAL
            },    # key: min: 36, max: 36
          },    # min: 1, max: 100

        },
        ...
      ],
      TableId            => 'MyResourceId',
      WorkbookId         => 'MyResourceId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $CreatedRows      = $BatchCreateTableRowsResult->CreatedRows;
    my $FailedBatchItems = $BatchCreateTableRowsResult->FailedBatchItems;
    my $WorkbookCursor   = $BatchCreateTableRowsResult->WorkbookCursor;

    # Returns a L<Paws::Honeycode::BatchCreateTableRowsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/honeycode/BatchCreateTableRows>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The request token for performing the batch create operation. Request
tokens help to identify duplicate requests. If a call times out or
fails due to a transient error like a failed network connection, you
can retry the call with the same request token. The service ensures
that if the first call using that request token is successfully
performed, the second call will not perform the operation again.

Note that request tokens are valid only for a few minutes. You cannot
use request tokens to dedupe requests spanning hours or days.



=head2 B<REQUIRED> RowsToCreate => ArrayRef[L<Paws::Honeycode::CreateRowData>]

The list of rows to create at the end of the table. Each item in this
list needs to have a batch item id to uniquely identify the element in
the request and the cells to create for that row. You need to specify
at least one item in this list.

Note that if one of the column ids in any of the rows in the request
does not exist in the table, then the request fails and no updates are
made to the table.



=head2 B<REQUIRED> TableId => Str

The ID of the table where the new rows are being added.

If a table with the specified ID could not be found, this API throws
ResourceNotFoundException.



=head2 B<REQUIRED> WorkbookId => Str

The ID of the workbook where the new rows are being added.

If a workbook with the specified ID could not be found, this API throws
ResourceNotFoundException.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchCreateTableRows in L<Paws::Honeycode>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

