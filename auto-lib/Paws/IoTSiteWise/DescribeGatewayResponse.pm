
package Paws::IoTSiteWise::DescribeGatewayResponse;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate', required => 1);
  has GatewayArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayArn', required => 1);
  has GatewayCapabilitySummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::GatewayCapabilitySummary]', traits => ['NameInRequest'], request_name => 'gatewayCapabilitySummaries', required => 1);
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayId', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayName', required => 1);
  has GatewayPlatform => (is => 'ro', isa => 'Paws::IoTSiteWise::GatewayPlatform', traits => ['NameInRequest'], request_name => 'gatewayPlatform');
  has LastUpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdateDate', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeGatewayResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

The date the gateway was created, in Unix epoch time.


=head2 B<REQUIRED> GatewayArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the gateway, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}>


=head2 B<REQUIRED> GatewayCapabilitySummaries => ArrayRef[L<Paws::IoTSiteWise::GatewayCapabilitySummary>]

A list of gateway capability summaries that each contain a namespace
and status. Each gateway capability defines data sources for the
gateway. To retrieve a capability configuration's definition, use
DescribeGatewayCapabilityConfiguration
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html).


=head2 B<REQUIRED> GatewayId => Str

The ID of the gateway device.


=head2 B<REQUIRED> GatewayName => Str

The name of the gateway.


=head2 GatewayPlatform => L<Paws::IoTSiteWise::GatewayPlatform>

The gateway's platform.


=head2 B<REQUIRED> LastUpdateDate => Str

The date the gateway was last updated, in Unix epoch time.


=head2 _request_id => Str


=cut

