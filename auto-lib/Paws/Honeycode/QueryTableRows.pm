
package Paws::Honeycode::QueryTableRows;
  use Moose;
  has FilterFormula => (is => 'ro', isa => 'Paws::Honeycode::Filter', traits => ['NameInRequest'], request_name => 'filterFormula', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TableId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableId', required => 1);
  has WorkbookId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workbookId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'QueryTableRows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workbooks/{workbookId}/tables/{tableId}/rows/query');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Honeycode::QueryTableRowsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::QueryTableRows - Arguments for method QueryTableRows on L<Paws::Honeycode>

=head1 DESCRIPTION

This class represents the parameters used for calling the method QueryTableRows on the
L<Amazon Honeycode|Paws::Honeycode> service. Use the attributes of this class
as arguments to method QueryTableRows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to QueryTableRows.

=head1 SYNOPSIS

    my $honeycode = Paws->service('Honeycode');
    my $QueryTableRowsResult = $honeycode->QueryTableRows(
      FilterFormula => {
        Formula      => 'MyFormula',    # max: 8192
        ContextRowId => 'MyRowId',      # min: 77, max: 77; OPTIONAL
      },
      TableId    => 'MyResourceId',
      WorkbookId => 'MyResourceId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $ColumnIds      = $QueryTableRowsResult->ColumnIds;
    my $NextToken      = $QueryTableRowsResult->NextToken;
    my $Rows           = $QueryTableRowsResult->Rows;
    my $WorkbookCursor = $QueryTableRowsResult->WorkbookCursor;

    # Returns a L<Paws::Honeycode::QueryTableRowsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/honeycode/QueryTableRows>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FilterFormula => L<Paws::Honeycode::Filter>

An object that represents a filter formula along with the id of the
context row under which the filter function needs to evaluate.



=head2 MaxResults => Int

The maximum number of rows to return in each page of the results.



=head2 NextToken => Str

This parameter is optional. If a nextToken is not specified, the API
returns the first page of data.

Pagination tokens expire after 1 hour. If you use a token that was
returned more than an hour back, the API will throw
ValidationException.



=head2 B<REQUIRED> TableId => Str

The ID of the table whose rows are being queried.

If a table with the specified id could not be found, this API throws
ResourceNotFoundException.



=head2 B<REQUIRED> WorkbookId => Str

The ID of the workbook whose table rows are being queried.

If a workbook with the specified id could not be found, this API throws
ResourceNotFoundException.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method QueryTableRows in L<Paws::Honeycode>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

