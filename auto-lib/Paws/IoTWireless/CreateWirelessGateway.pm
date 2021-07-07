
package Paws::IoTWireless::CreateWirelessGateway;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANGateway', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWirelessGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-gateways');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::CreateWirelessGatewayResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateWirelessGateway - Arguments for method CreateWirelessGateway on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWirelessGateway on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method CreateWirelessGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWirelessGateway.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $CreateWirelessGatewayResponse =
      $api . iotwireless->CreateWirelessGateway(
      LoRaWAN => {
        GatewayEui     => 'MyGatewayEui',    # OPTIONAL
        JoinEuiFilters => [
          [ 'MyJoinEui', ... ], ...          # min: 2, max: 2
        ],    # max: 3; OPTIONAL
        NetIdFilters => [ 'MyNetId', ... ],    # max: 10; OPTIONAL
        RfRegion     => 'MyRfRegion',          # max: 64; OPTIONAL
        SubBands     => [
          1, ...                               # min: 1, max: 8
        ],    # max: 8; OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',     # OPTIONAL
      Description        => 'MyDescription',            # OPTIONAL
      Name               => 'MyWirelessGatewayName',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateWirelessGatewayResponse->Arn;
    my $Id  = $CreateWirelessGatewayResponse->Id;

    # Returns a L<Paws::IoTWireless::CreateWirelessGatewayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/CreateWirelessGateway>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Each resource must have a unique client request token. If you try to
create a new resource with the same token as a resource that already
exists, an exception occurs. If you omit this value, AWS SDKs will
automatically generate a unique client request.



=head2 Description => Str

The description of the new resource.



=head2 B<REQUIRED> LoRaWAN => L<Paws::IoTWireless::LoRaWANGateway>

The gateway configuration information to use to create the wireless
gateway.



=head2 Name => Str

The name of the new resource.



=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]

The tags to attach to the new wireless gateway. Tags are metadata that
you can use to manage a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWirelessGateway in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

