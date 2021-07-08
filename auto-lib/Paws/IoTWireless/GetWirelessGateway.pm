
package Paws::IoTWireless::GetWirelessGateway;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has IdentifierType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'identifierType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWirelessGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-gateways/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::GetWirelessGatewayResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetWirelessGateway - Arguments for method GetWirelessGateway on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWirelessGateway on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method GetWirelessGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWirelessGateway.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $GetWirelessGatewayResponse = $api . iotwireless->GetWirelessGateway(
      Identifier     => 'MyIdentifier',
      IdentifierType => 'GatewayEui',

    );

    # Results:
    my $Arn         = $GetWirelessGatewayResponse->Arn;
    my $Description = $GetWirelessGatewayResponse->Description;
    my $Id          = $GetWirelessGatewayResponse->Id;
    my $LoRaWAN     = $GetWirelessGatewayResponse->LoRaWAN;
    my $Name        = $GetWirelessGatewayResponse->Name;
    my $ThingArn    = $GetWirelessGatewayResponse->ThingArn;
    my $ThingName   = $GetWirelessGatewayResponse->ThingName;

    # Returns a L<Paws::IoTWireless::GetWirelessGatewayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/GetWirelessGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The identifier of the wireless gateway to get.



=head2 B<REQUIRED> IdentifierType => Str

The type of identifier used in C<identifier>.

Valid values are: C<"GatewayEui">, C<"WirelessGatewayId">, C<"ThingName">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWirelessGateway in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

