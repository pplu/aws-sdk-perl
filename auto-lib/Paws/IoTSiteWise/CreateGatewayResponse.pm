
package Paws::IoTSiteWise::CreateGatewayResponse;
  use Moose;
  has GatewayArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayArn', required => 1);
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateGatewayResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the gateway, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}>


=head2 B<REQUIRED> GatewayId => Str

The ID of the gateway device. You can use this ID when you call other
AWS IoT SiteWise APIs.


=head2 _request_id => Str


=cut

