
package Paws::IoTDeviceAdvisor::ListSuiteRuns;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SuiteDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'suiteDefinitionId');
  has SuiteDefinitionVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'suiteDefinitionVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSuiteRuns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/suiteRuns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTDeviceAdvisor::ListSuiteRunsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::ListSuiteRuns - Arguments for method ListSuiteRuns on L<Paws::IoTDeviceAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSuiteRuns on the
L<AWS IoT Core Device Advisor|Paws::IoTDeviceAdvisor> service. Use the attributes of this class
as arguments to method ListSuiteRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSuiteRuns.

=head1 SYNOPSIS

    my $api.iotdeviceadvisor = Paws->service('IoTDeviceAdvisor');
    my $ListSuiteRunsResponse = $api . iotdeviceadvisor->ListSuiteRuns(
      MaxResults             => 1,                             # OPTIONAL
      NextToken              => 'MyToken',                     # OPTIONAL
      SuiteDefinitionId      => 'MyUUID',                      # OPTIONAL
      SuiteDefinitionVersion => 'MySuiteDefinitionVersion',    # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListSuiteRunsResponse->NextToken;
    my $SuiteRunsList = $ListSuiteRunsResponse->SuiteRunsList;

    # Returns a L<Paws::IoTDeviceAdvisor::ListSuiteRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotdeviceadvisor/ListSuiteRuns>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at once.



=head2 NextToken => Str

A token to retrieve the next set of results.



=head2 SuiteDefinitionId => Str

Lists the test suite runs of the specified test suite based on suite
definition Id.



=head2 SuiteDefinitionVersion => Str

Must be passed along with suiteDefinitionId. Lists the test suite runs
of the specified test suite based on suite definition version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSuiteRuns in L<Paws::IoTDeviceAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

