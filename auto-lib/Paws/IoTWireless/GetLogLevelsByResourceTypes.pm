
package Paws::IoTWireless::GetLogLevelsByResourceTypes;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLogLevelsByResourceTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/log-levels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::GetLogLevelsByResourceTypesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetLogLevelsByResourceTypes - Arguments for method GetLogLevelsByResourceTypes on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLogLevelsByResourceTypes on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method GetLogLevelsByResourceTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLogLevelsByResourceTypes.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $GetLogLevelsByResourceTypesResponse =
      $api . iotwireless->GetLogLevelsByResourceTypes();

    # Results:
    my $DefaultLogLevel = $GetLogLevelsByResourceTypesResponse->DefaultLogLevel;
    my $WirelessDeviceLogOptions =
      $GetLogLevelsByResourceTypesResponse->WirelessDeviceLogOptions;
    my $WirelessGatewayLogOptions =
      $GetLogLevelsByResourceTypesResponse->WirelessGatewayLogOptions;

   # Returns a L<Paws::IoTWireless::GetLogLevelsByResourceTypesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/GetLogLevelsByResourceTypes>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLogLevelsByResourceTypes in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

