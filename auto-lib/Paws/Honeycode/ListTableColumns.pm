
package Paws::Honeycode::ListTableColumns;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TableId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableId', required => 1);
  has WorkbookId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workbookId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTableColumns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workbooks/{workbookId}/tables/{tableId}/columns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Honeycode::ListTableColumnsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::ListTableColumns - Arguments for method ListTableColumns on L<Paws::Honeycode>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTableColumns on the
L<Amazon Honeycode|Paws::Honeycode> service. Use the attributes of this class
as arguments to method ListTableColumns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTableColumns.

=head1 SYNOPSIS

    my $honeycode = Paws->service('Honeycode');
    my $ListTableColumnsResult = $honeycode->ListTableColumns(
      TableId    => 'MyResourceId',
      WorkbookId => 'MyResourceId',
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListTableColumnsResult->NextToken;
    my $TableColumns   = $ListTableColumnsResult->TableColumns;
    my $WorkbookCursor = $ListTableColumnsResult->WorkbookCursor;

    # Returns a L<Paws::Honeycode::ListTableColumnsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/honeycode/ListTableColumns>

=head1 ATTRIBUTES


=head2 NextToken => Str

This parameter is optional. If a nextToken is not specified, the API
returns the first page of data.

Pagination tokens expire after 1 hour. If you use a token that was
returned more than an hour back, the API will throw
ValidationException.



=head2 B<REQUIRED> TableId => Str

The ID of the table whose columns are being retrieved.

If a table with the specified id could not be found, this API throws
ResourceNotFoundException.



=head2 B<REQUIRED> WorkbookId => Str

The ID of the workbook that contains the table whose columns are being
retrieved.

If a workbook with the specified id could not be found, this API throws
ResourceNotFoundException.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTableColumns in L<Paws::Honeycode>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

