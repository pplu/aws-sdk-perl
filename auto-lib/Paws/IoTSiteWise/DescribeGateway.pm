
package Paws::IoTSiteWise::DescribeGateway;
  use Moose;
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'gatewayId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/20200301/gateways/{gatewayId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeGatewayResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeGateway - Arguments for method DescribeGateway on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGateway on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGateway.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeGatewayResponse = $iotsitewise->DescribeGateway(
      GatewayId => 'MyID',

    );

    # Results:
    my $CreationDate = $DescribeGatewayResponse->CreationDate;
    my $GatewayArn   = $DescribeGatewayResponse->GatewayArn;
    my $GatewayCapabilitySummaries =
      $DescribeGatewayResponse->GatewayCapabilitySummaries;
    my $GatewayId       = $DescribeGatewayResponse->GatewayId;
    my $GatewayName     = $DescribeGatewayResponse->GatewayName;
    my $GatewayPlatform = $DescribeGatewayResponse->GatewayPlatform;
    my $LastUpdateDate  = $DescribeGatewayResponse->LastUpdateDate;

    # Returns a L<Paws::IoTSiteWise::DescribeGatewayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayId => Str

The ID of the gateway device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGateway in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

