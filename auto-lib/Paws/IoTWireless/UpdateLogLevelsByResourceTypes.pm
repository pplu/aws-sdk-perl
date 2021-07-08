
package Paws::IoTWireless::UpdateLogLevelsByResourceTypes;
  use Moose;
  has DefaultLogLevel => (is => 'ro', isa => 'Str');
  has WirelessDeviceLogOptions => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::WirelessDeviceLogOption]');
  has WirelessGatewayLogOptions => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::WirelessGatewayLogOption]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLogLevelsByResourceTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/log-levels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::UpdateLogLevelsByResourceTypesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::UpdateLogLevelsByResourceTypes - Arguments for method UpdateLogLevelsByResourceTypes on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLogLevelsByResourceTypes on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method UpdateLogLevelsByResourceTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLogLevelsByResourceTypes.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $UpdateLogLevelsByResourceTypesResponse =
      $api . iotwireless->UpdateLogLevelsByResourceTypes(
      DefaultLogLevel          => 'INFO',    # OPTIONAL
      WirelessDeviceLogOptions => [
        {
          LogLevel => 'INFO',        # values: INFO, ERROR, DISABLED
          Type     => 'Sidewalk',    # values: Sidewalk, LoRaWAN
          Events   => [
            {
              Event => 'Join'
              , # values: Join, Rejoin, Uplink_Data, Downlink_Data, Registration
              LogLevel => 'INFO',    # values: INFO, ERROR, DISABLED

            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      WirelessGatewayLogOptions => [
        {
          LogLevel => 'INFO',       # values: INFO, ERROR, DISABLED
          Type     => 'LoRaWAN',    # values: LoRaWAN
          Events   => [
            {
              Event    => 'CUPS_Request',    # values: CUPS_Request, Certificate
              LogLevel => 'INFO',            # values: INFO, ERROR, DISABLED

            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/UpdateLogLevelsByResourceTypes>

=head1 ATTRIBUTES


=head2 DefaultLogLevel => Str



Valid values are: C<"INFO">, C<"ERROR">, C<"DISABLED">

=head2 WirelessDeviceLogOptions => ArrayRef[L<Paws::IoTWireless::WirelessDeviceLogOption>]





=head2 WirelessGatewayLogOptions => ArrayRef[L<Paws::IoTWireless::WirelessGatewayLogOption>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLogLevelsByResourceTypes in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

