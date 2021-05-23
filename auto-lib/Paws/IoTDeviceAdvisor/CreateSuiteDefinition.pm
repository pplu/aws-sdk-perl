
package Paws::IoTDeviceAdvisor::CreateSuiteDefinition;
  use Moose;
  has SuiteDefinitionConfiguration => (is => 'ro', isa => 'Paws::IoTDeviceAdvisor::SuiteDefinitionConfiguration', traits => ['NameInRequest'], request_name => 'suiteDefinitionConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::IoTDeviceAdvisor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSuiteDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/suiteDefinitions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTDeviceAdvisor::CreateSuiteDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::CreateSuiteDefinition - Arguments for method CreateSuiteDefinition on L<Paws::IoTDeviceAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSuiteDefinition on the
L<AWS IoT Core Device Advisor|Paws::IoTDeviceAdvisor> service. Use the attributes of this class
as arguments to method CreateSuiteDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSuiteDefinition.

=head1 SYNOPSIS

    my $api.iotdeviceadvisor = Paws->service('IoTDeviceAdvisor');
    my $CreateSuiteDefinitionResponse =
      $api . iotdeviceadvisor->CreateSuiteDefinition(
      SuiteDefinitionConfiguration => {
        DevicePermissionRoleArn =>
          'MyAmazonResourceName',    # min: 20, max: 2048; OPTIONAL
        Devices => [
          {
            CertificateArn =>
              'MyAmazonResourceName',    # min: 20, max: 2048; OPTIONAL
            ThingArn => 'MyAmazonResourceName',   # min: 20, max: 2048; OPTIONAL
          },
          ...
        ],                                        # max: 2; OPTIONAL
        IntendedForQualification => 1,             # OPTIONAL
        RootGroup                => 'MyRootGroup', # min: 1, max: 2048; OPTIONAL
        SuiteDefinitionName =>
          'MySuiteDefinitionName',                 # min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyString128' =>
          'MyString256',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
      );

    # Results:
    my $CreatedAt          = $CreateSuiteDefinitionResponse->CreatedAt;
    my $SuiteDefinitionArn = $CreateSuiteDefinitionResponse->SuiteDefinitionArn;
    my $SuiteDefinitionId  = $CreateSuiteDefinitionResponse->SuiteDefinitionId;
    my $SuiteDefinitionName =
      $CreateSuiteDefinitionResponse->SuiteDefinitionName;

    # Returns a L<Paws::IoTDeviceAdvisor::CreateSuiteDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotdeviceadvisor/CreateSuiteDefinition>

=head1 ATTRIBUTES


=head2 SuiteDefinitionConfiguration => L<Paws::IoTDeviceAdvisor::SuiteDefinitionConfiguration>

Creates a Device Advisor test suite with suite definition
configuration.



=head2 Tags => L<Paws::IoTDeviceAdvisor::TagMap>

The tags to be attached to the suite definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSuiteDefinition in L<Paws::IoTDeviceAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

