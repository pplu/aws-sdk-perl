
package Paws::ApplicationCostProfiler::UpdateReportDefinition;
  use Moose;
  has DestinationS3Location => (is => 'ro', isa => 'Paws::ApplicationCostProfiler::S3Location', traits => ['NameInRequest'], request_name => 'destinationS3Location', required => 1);
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);
  has ReportDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportDescription', required => 1);
  has ReportFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportFrequency', required => 1);
  has ReportId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'reportId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateReportDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reportDefinition/{reportId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationCostProfiler::UpdateReportDefinitionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationCostProfiler::UpdateReportDefinition - Arguments for method UpdateReportDefinition on L<Paws::ApplicationCostProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReportDefinition on the
L<AWS Application Cost Profiler|Paws::ApplicationCostProfiler> service. Use the attributes of this class
as arguments to method UpdateReportDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReportDefinition.

=head1 SYNOPSIS

    my $application-cost-profiler = Paws->service('ApplicationCostProfiler');
    my $UpdateReportDefinitionResult =
      $application -cost-profiler->UpdateReportDefinition(
      DestinationS3Location => {
        Bucket => 'MyS3Bucket',    # min: 3, max: 63
        Prefix => 'MyS3Prefix',    # min: 1, max: 512

      },
      Format            => 'CSV',
      ReportDescription => 'MyReportDescription',
      ReportFrequency   => 'MONTHLY',
      ReportId          => 'MyReportId',

      );

    # Results:
    my $ReportId = $UpdateReportDefinitionResult->ReportId;

# Returns a L<Paws::ApplicationCostProfiler::UpdateReportDefinitionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-cost-profiler/UpdateReportDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationS3Location => L<Paws::ApplicationCostProfiler::S3Location>

Required. Amazon Simple Storage Service (Amazon S3) location where
Application Cost Profiler uploads the report.



=head2 B<REQUIRED> Format => Str

Required. The format to use for the generated report.

Valid values are: C<"CSV">, C<"PARQUET">

=head2 B<REQUIRED> ReportDescription => Str

Required. Description of the report.



=head2 B<REQUIRED> ReportFrequency => Str

Required. The cadence to generate the report.

Valid values are: C<"MONTHLY">, C<"DAILY">, C<"ALL">

=head2 B<REQUIRED> ReportId => Str

Required. ID of the report to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReportDefinition in L<Paws::ApplicationCostProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

