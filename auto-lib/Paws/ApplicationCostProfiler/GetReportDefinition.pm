
package Paws::ApplicationCostProfiler::GetReportDefinition;
  use Moose;
  has ReportId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'reportId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReportDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reportDefinition/{reportId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationCostProfiler::GetReportDefinitionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationCostProfiler::GetReportDefinition - Arguments for method GetReportDefinition on L<Paws::ApplicationCostProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReportDefinition on the
L<AWS Application Cost Profiler|Paws::ApplicationCostProfiler> service. Use the attributes of this class
as arguments to method GetReportDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReportDefinition.

=head1 SYNOPSIS

    my $application-cost-profiler = Paws->service('ApplicationCostProfiler');
    my $GetReportDefinitionResult =
      $application -cost-profiler->GetReportDefinition(
      ReportId => 'MyReportId',

      );

    # Results:
    my $CreatedAt = $GetReportDefinitionResult->CreatedAt;
    my $DestinationS3Location =
      $GetReportDefinitionResult->DestinationS3Location;
    my $Format            = $GetReportDefinitionResult->Format;
    my $LastUpdated       = $GetReportDefinitionResult->LastUpdated;
    my $ReportDescription = $GetReportDefinitionResult->ReportDescription;
    my $ReportFrequency   = $GetReportDefinitionResult->ReportFrequency;
    my $ReportId          = $GetReportDefinitionResult->ReportId;

 # Returns a L<Paws::ApplicationCostProfiler::GetReportDefinitionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-cost-profiler/GetReportDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReportId => Str

ID of the report to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReportDefinition in L<Paws::ApplicationCostProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

