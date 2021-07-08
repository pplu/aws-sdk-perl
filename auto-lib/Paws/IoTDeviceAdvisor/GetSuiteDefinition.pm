
package Paws::IoTDeviceAdvisor::GetSuiteDefinition;
  use Moose;
  has SuiteDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'suiteDefinitionId', required => 1);
  has SuiteDefinitionVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'suiteDefinitionVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSuiteDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/suiteDefinitions/{suiteDefinitionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTDeviceAdvisor::GetSuiteDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::GetSuiteDefinition - Arguments for method GetSuiteDefinition on L<Paws::IoTDeviceAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSuiteDefinition on the
L<AWS IoT Core Device Advisor|Paws::IoTDeviceAdvisor> service. Use the attributes of this class
as arguments to method GetSuiteDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSuiteDefinition.

=head1 SYNOPSIS

    my $api.iotdeviceadvisor = Paws->service('IoTDeviceAdvisor');
    my $GetSuiteDefinitionResponse =
      $api . iotdeviceadvisor->GetSuiteDefinition(
      SuiteDefinitionId      => 'MyUUID',
      SuiteDefinitionVersion => 'MySuiteDefinitionVersion',    # OPTIONAL
      );

    # Results:
    my $CreatedAt          = $GetSuiteDefinitionResponse->CreatedAt;
    my $LastModifiedAt     = $GetSuiteDefinitionResponse->LastModifiedAt;
    my $LatestVersion      = $GetSuiteDefinitionResponse->LatestVersion;
    my $SuiteDefinitionArn = $GetSuiteDefinitionResponse->SuiteDefinitionArn;
    my $SuiteDefinitionConfiguration =
      $GetSuiteDefinitionResponse->SuiteDefinitionConfiguration;
    my $SuiteDefinitionId = $GetSuiteDefinitionResponse->SuiteDefinitionId;
    my $SuiteDefinitionVersion =
      $GetSuiteDefinitionResponse->SuiteDefinitionVersion;
    my $Tags = $GetSuiteDefinitionResponse->Tags;

    # Returns a L<Paws::IoTDeviceAdvisor::GetSuiteDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotdeviceadvisor/GetSuiteDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SuiteDefinitionId => Str

Suite definition Id of the test suite to get.



=head2 SuiteDefinitionVersion => Str

Suite definition version of the test suite to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSuiteDefinition in L<Paws::IoTDeviceAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

