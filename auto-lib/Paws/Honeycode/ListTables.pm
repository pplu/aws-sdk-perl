
package Paws::Honeycode::ListTables;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has WorkbookId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workbookId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTables');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workbooks/{workbookId}/tables');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Honeycode::ListTablesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::ListTables - Arguments for method ListTables on L<Paws::Honeycode>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTables on the
L<Amazon Honeycode|Paws::Honeycode> service. Use the attributes of this class
as arguments to method ListTables.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTables.

=head1 SYNOPSIS

    my $honeycode = Paws->service('Honeycode');
    my $ListTablesResult = $honeycode->ListTables(
      WorkbookId => 'MyResourceId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListTablesResult->NextToken;
    my $Tables         = $ListTablesResult->Tables;
    my $WorkbookCursor = $ListTablesResult->WorkbookCursor;

    # Returns a L<Paws::Honeycode::ListTablesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/honeycode/ListTables>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of tables to return in each page of the results.



=head2 NextToken => Str

This parameter is optional. If a nextToken is not specified, the API
returns the first page of data.

Pagination tokens expire after 1 hour. If you use a token that was
returned more than an hour back, the API will throw
ValidationException.



=head2 B<REQUIRED> WorkbookId => Str

The ID of the workbook whose tables are being retrieved.

If a workbook with the specified id could not be found, this API throws
ResourceNotFoundException.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTables in L<Paws::Honeycode>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

