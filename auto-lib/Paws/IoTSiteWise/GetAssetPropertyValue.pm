
package Paws::IoTSiteWise::GetAssetPropertyValue;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'assetId');
  has PropertyAlias => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'propertyAlias');
  has PropertyId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'propertyId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssetPropertyValue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/properties/latest');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::GetAssetPropertyValueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::GetAssetPropertyValue - Arguments for method GetAssetPropertyValue on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssetPropertyValue on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method GetAssetPropertyValue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssetPropertyValue.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $GetAssetPropertyValueResponse = $iotsitewise->GetAssetPropertyValue(
      AssetId       => 'MyID',                    # OPTIONAL
      PropertyAlias => 'MyAssetPropertyAlias',    # OPTIONAL
      PropertyId    => 'MyID',                    # OPTIONAL
    );

    # Results:
    my $PropertyValue = $GetAssetPropertyValueResponse->PropertyValue;

    # Returns a L<Paws::IoTSiteWise::GetAssetPropertyValueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/GetAssetPropertyValue>

=head1 ATTRIBUTES


=head2 AssetId => Str

The ID of the asset.



=head2 PropertyAlias => Str

The property alias that identifies the property, such as an OPC-UA
server data stream path (for example,
C</company/windfarm/3/turbine/7/temperature>). For more information,
see Mapping industrial data streams to asset properties
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html)
in the I<AWS IoT SiteWise User Guide>.



=head2 PropertyId => Str

The ID of the asset property.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssetPropertyValue in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

