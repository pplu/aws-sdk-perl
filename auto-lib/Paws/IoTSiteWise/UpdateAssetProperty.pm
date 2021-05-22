
package Paws::IoTSiteWise::UpdateAssetProperty;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has PropertyAlias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'propertyAlias');
  has PropertyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'propertyId', required => 1);
  has PropertyNotificationState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'propertyNotificationState');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssetProperty');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assets/{assetId}/properties/{propertyId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdateAssetProperty - Arguments for method UpdateAssetProperty on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssetProperty on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method UpdateAssetProperty.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssetProperty.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    $iotsitewise->UpdateAssetProperty(
      AssetId                   => 'MyID',
      PropertyId                => 'MyID',
      ClientToken               => 'MyClientToken',      # OPTIONAL
      PropertyAlias             => 'MyPropertyAlias',    # OPTIONAL
      PropertyNotificationState => 'ENABLED',            # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/UpdateAssetProperty>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The ID of the asset to be updated.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 PropertyAlias => Str

The property alias that identifies the property, such as an OPC-UA
server data stream path (for example,
C</company/windfarm/3/turbine/7/temperature>). For more information,
see Mapping industrial data streams to asset properties
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html)
in the I<AWS IoT SiteWise User Guide>.

If you omit this parameter, the alias is removed from the property.



=head2 B<REQUIRED> PropertyId => Str

The ID of the asset property to be updated.



=head2 PropertyNotificationState => Str

The MQTT notification state (enabled or disabled) for this asset
property. When the notification state is enabled, AWS IoT SiteWise
publishes property value updates to a unique MQTT topic. For more
information, see Interacting with other services
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html)
in the I<AWS IoT SiteWise User Guide>.

If you omit this parameter, the notification state is set to
C<DISABLED>.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAssetProperty in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

