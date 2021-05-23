
package Paws::IoTDeviceAdvisor::GetSuiteRunReport;
  use Moose;
  has SuiteDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'suiteDefinitionId', required => 1);
  has SuiteRunId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'suiteRunId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSuiteRunReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/report');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTDeviceAdvisor::GetSuiteRunReportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::GetSuiteRunReport - Arguments for method GetSuiteRunReport on L<Paws::IoTDeviceAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSuiteRunReport on the
L<AWS IoT Core Device Advisor|Paws::IoTDeviceAdvisor> service. Use the attributes of this class
as arguments to method GetSuiteRunReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSuiteRunReport.

=head1 SYNOPSIS

    my $api.iotdeviceadvisor = Paws->service('IoTDeviceAdvisor');
    my $GetSuiteRunReportResponse = $api . iotdeviceadvisor->GetSuiteRunReport(
      SuiteDefinitionId => 'MyUUID',
      SuiteRunId        => 'MyUUID',

    );

    # Results:
    my $QualificationReportDownloadUrl =
      $GetSuiteRunReportResponse->QualificationReportDownloadUrl;

    # Returns a L<Paws::IoTDeviceAdvisor::GetSuiteRunReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotdeviceadvisor/GetSuiteRunReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SuiteDefinitionId => Str

Suite definition Id of the test suite.



=head2 B<REQUIRED> SuiteRunId => Str

Suite run Id of the test suite run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSuiteRunReport in L<Paws::IoTDeviceAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

