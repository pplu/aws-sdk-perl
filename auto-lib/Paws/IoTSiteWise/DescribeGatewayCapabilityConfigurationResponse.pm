
package Paws::IoTSiteWise::DescribeGatewayCapabilityConfigurationResponse;
  use Moose;
  has CapabilityConfiguration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'capabilityConfiguration', required => 1);
  has CapabilityNamespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'capabilityNamespace', required => 1);
  has CapabilitySyncStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'capabilitySyncStatus', required => 1);
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeGatewayCapabilityConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapabilityConfiguration => Str

The JSON document that defines the gateway capability's configuration.
For more information, see Configuring data sources (CLI)
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli)
in the I<AWS IoT SiteWise User Guide>.


=head2 B<REQUIRED> CapabilityNamespace => Str

The namespace of the gateway capability.


=head2 B<REQUIRED> CapabilitySyncStatus => Str

The synchronization status of the capability configuration. The sync
status can be one of the following:

=over

=item *

C<IN_SYNC> E<ndash> The gateway is running the capability
configuration.

=item *

C<OUT_OF_SYNC> E<ndash> The gateway hasn't received the capability
configuration.

=item *

C<SYNC_FAILED> E<ndash> The gateway rejected the capability
configuration.

=back


Valid values are: C<"IN_SYNC">, C<"OUT_OF_SYNC">, C<"SYNC_FAILED">
=head2 B<REQUIRED> GatewayId => Str

The ID of the gateway that defines the capability configuration.


=head2 _request_id => Str


=cut

