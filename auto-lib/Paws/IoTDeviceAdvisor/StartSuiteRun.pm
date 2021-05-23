
package Paws::IoTDeviceAdvisor::StartSuiteRun;
  use Moose;
  has SuiteDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'suiteDefinitionId', required => 1);
  has SuiteDefinitionVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suiteDefinitionVersion');
  has SuiteRunConfiguration => (is => 'ro', isa => 'Paws::IoTDeviceAdvisor::SuiteRunConfiguration', traits => ['NameInRequest'], request_name => 'suiteRunConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::IoTDeviceAdvisor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSuiteRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/suiteDefinitions/{suiteDefinitionId}/suiteRuns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTDeviceAdvisor::StartSuiteRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::StartSuiteRun - Arguments for method StartSuiteRun on L<Paws::IoTDeviceAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSuiteRun on the
L<AWS IoT Core Device Advisor|Paws::IoTDeviceAdvisor> service. Use the attributes of this class
as arguments to method StartSuiteRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSuiteRun.

=head1 SYNOPSIS

    my $api.iotdeviceadvisor = Paws->service('IoTDeviceAdvisor');
    my $StartSuiteRunResponse = $api . iotdeviceadvisor->StartSuiteRun(
      SuiteDefinitionId      => 'MyUUID',
      SuiteDefinitionVersion => 'MySuiteDefinitionVersion',    # OPTIONAL
      SuiteRunConfiguration  => {
        PrimaryDevice => {
          CertificateArn =>
            'MyAmazonResourceName',    # min: 20, max: 2048; OPTIONAL
          ThingArn => 'MyAmazonResourceName',    # min: 20, max: 2048; OPTIONAL
        },    # OPTIONAL
        SelectedTestList => [
          'MyUUID', ...    # min: 12, max: 36
        ],                 # max: 100; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyString128' =>
          'MyString256',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreatedAt   = $StartSuiteRunResponse->CreatedAt;
    my $SuiteRunArn = $StartSuiteRunResponse->SuiteRunArn;
    my $SuiteRunId  = $StartSuiteRunResponse->SuiteRunId;

    # Returns a L<Paws::IoTDeviceAdvisor::StartSuiteRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotdeviceadvisor/StartSuiteRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SuiteDefinitionId => Str

Suite definition Id of the test suite.



=head2 SuiteDefinitionVersion => Str

Suite definition version of the test suite.



=head2 SuiteRunConfiguration => L<Paws::IoTDeviceAdvisor::SuiteRunConfiguration>

Suite run configuration.



=head2 Tags => L<Paws::IoTDeviceAdvisor::TagMap>

The tags to be attached to the suite run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSuiteRun in L<Paws::IoTDeviceAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

