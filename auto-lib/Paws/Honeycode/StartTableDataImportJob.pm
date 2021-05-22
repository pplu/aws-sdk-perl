
package Paws::Honeycode::StartTableDataImportJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken', required => 1);
  has DataFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataFormat', required => 1);
  has DataSource => (is => 'ro', isa => 'Paws::Honeycode::ImportDataSource', traits => ['NameInRequest'], request_name => 'dataSource', required => 1);
  has DestinationTableId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableId', required => 1);
  has ImportOptions => (is => 'ro', isa => 'Paws::Honeycode::ImportOptions', traits => ['NameInRequest'], request_name => 'importOptions', required => 1);
  has WorkbookId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workbookId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTableDataImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workbooks/{workbookId}/tables/{tableId}/import');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Honeycode::StartTableDataImportJobResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::StartTableDataImportJob - Arguments for method StartTableDataImportJob on L<Paws::Honeycode>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTableDataImportJob on the
L<Amazon Honeycode|Paws::Honeycode> service. Use the attributes of this class
as arguments to method StartTableDataImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTableDataImportJob.

=head1 SYNOPSIS

    my $honeycode = Paws->service('Honeycode');
    my $StartTableDataImportJobResult = $honeycode->StartTableDataImportJob(
      ClientRequestToken => 'MyClientRequestToken',
      DataFormat         => 'DELIMITED_TEXT',
      DataSource         => {
        DataSourceConfig => {
          DataSourceUrl => 'MySecureURL',    # min: 1, max: 8000; OPTIONAL
        },

      },
      DestinationTableId => 'MyResourceId',
      ImportOptions      => {
        DelimitedTextOptions => {
          Delimiter             => 'MyDelimitedTextDelimiter',  # min: 1, max: 1
          DataCharacterEncoding => 'UTF-8'
          , # values: UTF-8, US-ASCII, ISO-8859-1, UTF-16BE, UTF-16LE, UTF-16; OPTIONAL
          HasHeaderRow    => 1,    # OPTIONAL
          IgnoreEmptyRows => 1,    # OPTIONAL
        },    # OPTIONAL
        DestinationOptions => {
          ColumnMap => {
            'MyResourceId' => {
              ColumnIndex => 1,    # min: 1; OPTIONAL
            },    # key: min: 36, max: 36
          },    # max: 100; OPTIONAL
        },    # OPTIONAL
      },
      WorkbookId => 'MyResourceId',

    );

    # Results:
    my $JobId     = $StartTableDataImportJobResult->JobId;
    my $JobStatus = $StartTableDataImportJobResult->JobStatus;

    # Returns a L<Paws::Honeycode::StartTableDataImportJobResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/honeycode/StartTableDataImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

The request token for performing the update action. Request tokens help
to identify duplicate requests. If a call times out or fails due to a
transient error like a failed network connection, you can retry the
call with the same request token. The service ensures that if the first
call using that request token is successfully performed, the second
call will not perform the action again.

Note that request tokens are valid only for a few minutes. You cannot
use request tokens to dedupe requests spanning hours or days.



=head2 B<REQUIRED> DataFormat => Str

The format of the data that is being imported. Currently the only
option supported is "DELIMITED_TEXT".

Valid values are: C<"DELIMITED_TEXT">

=head2 B<REQUIRED> DataSource => L<Paws::Honeycode::ImportDataSource>

The source of the data that is being imported. The size of source must
be no larger than 100 MB. Source must have no more than 100,000 cells
and no more than 1,000 rows.



=head2 B<REQUIRED> DestinationTableId => Str

The ID of the table where the rows are being imported.

If a table with the specified id could not be found, this API throws
ResourceNotFoundException.



=head2 B<REQUIRED> ImportOptions => L<Paws::Honeycode::ImportOptions>

The options for customizing this import request.



=head2 B<REQUIRED> WorkbookId => Str

The ID of the workbook where the rows are being imported.

If a workbook with the specified id could not be found, this API throws
ResourceNotFoundException.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTableDataImportJob in L<Paws::Honeycode>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

