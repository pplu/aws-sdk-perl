
package Paws::IoTSiteWise::CreateGateway;
  use Moose;
  has GatewayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayName', required => 1);
  has GatewayPlatform => (is => 'ro', isa => 'Paws::IoTSiteWise::GatewayPlatform', traits => ['NameInRequest'], request_name => 'gatewayPlatform', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTSiteWise::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/20200301/gateways');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::CreateGatewayResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateGateway - Arguments for method CreateGateway on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGateway on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method CreateGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGateway.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $CreateGatewayResponse = $iotsitewise->CreateGateway(
      GatewayName     => 'MyName',
      GatewayPlatform => {
        Greengrass => {
          GroupArn => 'MyARN',    # min: 1, max: 1600

        },

      },
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $GatewayArn = $CreateGatewayResponse->GatewayArn;
    my $GatewayId  = $CreateGatewayResponse->GatewayId;

    # Returns a L<Paws::IoTSiteWise::CreateGatewayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/CreateGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayName => Str

A unique, friendly name for the gateway.



=head2 B<REQUIRED> GatewayPlatform => L<Paws::IoTSiteWise::GatewayPlatform>

The gateway's platform. You can only specify one platform in a gateway.



=head2 Tags => L<Paws::IoTSiteWise::TagMap>

A list of key-value pairs that contain metadata for the gateway. For
more information, see Tagging your AWS IoT SiteWise resources
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html)
in the I<AWS IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGateway in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

