
package Paws::IoTSiteWise::UpdateGatewayCapabilityConfiguration;
  use Moose;
  has CapabilityConfiguration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'capabilityConfiguration', required => 1);
  has CapabilityNamespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'capabilityNamespace', required => 1);
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'gatewayId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewayCapabilityConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/20200301/gateways/{gatewayId}/capability');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::UpdateGatewayCapabilityConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdateGatewayCapabilityConfiguration - Arguments for method UpdateGatewayCapabilityConfiguration on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGatewayCapabilityConfiguration on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method UpdateGatewayCapabilityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGatewayCapabilityConfiguration.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $UpdateGatewayCapabilityConfigurationResponse =
      $iotsitewise->UpdateGatewayCapabilityConfiguration(
      CapabilityConfiguration => 'MyCapabilityConfiguration',
      CapabilityNamespace     => 'MyCapabilityNamespace',
      GatewayId               => 'MyID',

      );

    # Results:
    my $CapabilityNamespace =
      $UpdateGatewayCapabilityConfigurationResponse->CapabilityNamespace;
    my $CapabilitySyncStatus =
      $UpdateGatewayCapabilityConfigurationResponse->CapabilitySyncStatus;

# Returns a L<Paws::IoTSiteWise::UpdateGatewayCapabilityConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/UpdateGatewayCapabilityConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapabilityConfiguration => Str

The JSON document that defines the configuration for the gateway
capability. For more information, see Configuring data sources (CLI)
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli)
in the I<AWS IoT SiteWise User Guide>.



=head2 B<REQUIRED> CapabilityNamespace => Str

The namespace of the gateway capability configuration to be updated.
For example, if you configure OPC-UA sources from the AWS IoT SiteWise
console, your OPC-UA capability configuration has the namespace
C<iotsitewise:opcuacollector:version>, where C<version> is a number
such as C<1>.



=head2 B<REQUIRED> GatewayId => Str

The ID of the gateway to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGatewayCapabilityConfiguration in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

