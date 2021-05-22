
package Paws::IoTSiteWise::DescribeGatewayCapabilityConfiguration;
  use Moose;
  has CapabilityNamespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'capabilityNamespace', required => 1);
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'gatewayId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGatewayCapabilityConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeGatewayCapabilityConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeGatewayCapabilityConfiguration - Arguments for method DescribeGatewayCapabilityConfiguration on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGatewayCapabilityConfiguration on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeGatewayCapabilityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGatewayCapabilityConfiguration.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeGatewayCapabilityConfigurationResponse =
      $iotsitewise->DescribeGatewayCapabilityConfiguration(
      CapabilityNamespace => 'MyCapabilityNamespace',
      GatewayId           => 'MyID',

      );

    # Results:
    my $CapabilityConfiguration =
      $DescribeGatewayCapabilityConfigurationResponse->CapabilityConfiguration;
    my $CapabilityNamespace =
      $DescribeGatewayCapabilityConfigurationResponse->CapabilityNamespace;
    my $CapabilitySyncStatus =
      $DescribeGatewayCapabilityConfigurationResponse->CapabilitySyncStatus;
    my $GatewayId = $DescribeGatewayCapabilityConfigurationResponse->GatewayId;

# Returns a L<Paws::IoTSiteWise::DescribeGatewayCapabilityConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeGatewayCapabilityConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapabilityNamespace => Str

The namespace of the capability configuration. For example, if you
configure OPC-UA sources from the AWS IoT SiteWise console, your OPC-UA
capability configuration has the namespace
C<iotsitewise:opcuacollector:version>, where C<version> is a number
such as C<1>.



=head2 B<REQUIRED> GatewayId => Str

The ID of the gateway that defines the capability configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGatewayCapabilityConfiguration in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

