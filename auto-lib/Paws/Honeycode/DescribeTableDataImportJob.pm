
package Paws::Honeycode::DescribeTableDataImportJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has TableId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableId', required => 1);
  has WorkbookId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workbookId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTableDataImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workbooks/{workbookId}/tables/{tableId}/import/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Honeycode::DescribeTableDataImportJobResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::DescribeTableDataImportJob - Arguments for method DescribeTableDataImportJob on L<Paws::Honeycode>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTableDataImportJob on the
L<Amazon Honeycode|Paws::Honeycode> service. Use the attributes of this class
as arguments to method DescribeTableDataImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTableDataImportJob.

=head1 SYNOPSIS

    my $honeycode = Paws->service('Honeycode');
    my $DescribeTableDataImportJobResult =
      $honeycode->DescribeTableDataImportJob(
      JobId      => 'MyJobId',
      TableId    => 'MyResourceId',
      WorkbookId => 'MyResourceId',

      );

    # Results:
    my $JobMetadata = $DescribeTableDataImportJobResult->JobMetadata;
    my $JobStatus   = $DescribeTableDataImportJobResult->JobStatus;
    my $Message     = $DescribeTableDataImportJobResult->Message;

    # Returns a L<Paws::Honeycode::DescribeTableDataImportJobResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/honeycode/DescribeTableDataImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID of the job that was returned by the StartTableDataImportJob
request.

If a job with the specified id could not be found, this API throws
ResourceNotFoundException.



=head2 B<REQUIRED> TableId => Str

The ID of the table into which data was imported.

If a table with the specified id could not be found, this API throws
ResourceNotFoundException.



=head2 B<REQUIRED> WorkbookId => Str

The ID of the workbook into which data was imported.

If a workbook with the specified id could not be found, this API throws
ResourceNotFoundException.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTableDataImportJob in L<Paws::Honeycode>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

