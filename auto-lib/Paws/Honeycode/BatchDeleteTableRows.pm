
package Paws::Honeycode::BatchDeleteTableRows;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has RowIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'rowIds', required => 1);
  has TableId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableId', required => 1);
  has WorkbookId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workbookId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteTableRows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workbooks/{workbookId}/tables/{tableId}/rows/batchdelete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Honeycode::BatchDeleteTableRowsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::BatchDeleteTableRows - Arguments for method BatchDeleteTableRows on L<Paws::Honeycode>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteTableRows on the
L<Amazon Honeycode|Paws::Honeycode> service. Use the attributes of this class
as arguments to method BatchDeleteTableRows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteTableRows.

=head1 SYNOPSIS

    my $honeycode = Paws->service('Honeycode');
    my $BatchDeleteTableRowsResult = $honeycode->BatchDeleteTableRows(
      RowIds => [
        'MyRowId', ...    # min: 77, max: 77
      ],
      TableId            => 'MyResourceId',
      WorkbookId         => 'MyResourceId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $FailedBatchItems = $BatchDeleteTableRowsResult->FailedBatchItems;
    my $WorkbookCursor   = $BatchDeleteTableRowsResult->WorkbookCursor;

    # Returns a L<Paws::Honeycode::BatchDeleteTableRowsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/honeycode/BatchDeleteTableRows>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The request token for performing the delete action. Request tokens help
to identify duplicate requests. If a call times out or fails due to a
transient error like a failed network connection, you can retry the
call with the same request token. The service ensures that if the first
call using that request token is successfully performed, the second
call will not perform the action again.

Note that request tokens are valid only for a few minutes. You cannot
use request tokens to dedupe requests spanning hours or days.



=head2 B<REQUIRED> RowIds => ArrayRef[Str|Undef]

The list of row ids to delete from the table. You need to specify at
least one row id in this list.

Note that if one of the row ids provided in the request does not exist
in the table, then the request fails and no rows are deleted from the
table.



=head2 B<REQUIRED> TableId => Str

The ID of the table where the rows are being deleted.

If a table with the specified id could not be found, this API throws
ResourceNotFoundException.



=head2 B<REQUIRED> WorkbookId => Str

The ID of the workbook where the rows are being deleted.

If a workbook with the specified id could not be found, this API throws
ResourceNotFoundException.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteTableRows in L<Paws::Honeycode>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

