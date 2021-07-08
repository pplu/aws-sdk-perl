
package Paws::IoTSiteWise::GetInterpolatedAssetPropertyValues;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'assetId');
  has EndTimeInSeconds => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'endTimeInSeconds', required => 1);
  has EndTimeOffsetInNanos => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'endTimeOffsetInNanos');
  has IntervalInSeconds => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'intervalInSeconds', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PropertyAlias => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'propertyAlias');
  has PropertyId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'propertyId');
  has Quality => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'quality', required => 1);
  has StartTimeInSeconds => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'startTimeInSeconds', required => 1);
  has StartTimeOffsetInNanos => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'startTimeOffsetInNanos');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInterpolatedAssetPropertyValues');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/properties/interpolated');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::GetInterpolatedAssetPropertyValuesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::GetInterpolatedAssetPropertyValues - Arguments for method GetInterpolatedAssetPropertyValues on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInterpolatedAssetPropertyValues on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method GetInterpolatedAssetPropertyValues.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInterpolatedAssetPropertyValues.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $GetInterpolatedAssetPropertyValuesResponse =
      $iotsitewise->GetInterpolatedAssetPropertyValues(
      EndTimeInSeconds       => 1,
      IntervalInSeconds      => 1,
      Quality                => 'GOOD',
      StartTimeInSeconds     => 1,
      Type                   => 'MyInterpolationType',
      AssetId                => 'MyID',                    # OPTIONAL
      EndTimeOffsetInNanos   => 1,                         # OPTIONAL
      MaxResults             => 1,                         # OPTIONAL
      NextToken              => 'MyNextToken',             # OPTIONAL
      PropertyAlias          => 'MyAssetPropertyAlias',    # OPTIONAL
      PropertyId             => 'MyID',                    # OPTIONAL
      StartTimeOffsetInNanos => 1,                         # OPTIONAL
      );

    # Results:
    my $InterpolatedAssetPropertyValues =
      $GetInterpolatedAssetPropertyValuesResponse
      ->InterpolatedAssetPropertyValues;
    my $NextToken = $GetInterpolatedAssetPropertyValuesResponse->NextToken;

# Returns a L<Paws::IoTSiteWise::GetInterpolatedAssetPropertyValuesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/GetInterpolatedAssetPropertyValues>

=head1 ATTRIBUTES


=head2 AssetId => Str

The ID of the asset.



=head2 B<REQUIRED> EndTimeInSeconds => Int

The inclusive end of the range from which to interpolate data,
expressed in seconds in Unix epoch time.



=head2 EndTimeOffsetInNanos => Int

The nanosecond offset converted from C<endTimeInSeconds>.



=head2 B<REQUIRED> IntervalInSeconds => Int

The time interval in seconds over which to interpolate data. Each
interval starts when the previous one ends.



=head2 MaxResults => Int

The maximum number of results to be returned per paginated request. If
not specified, the default value is 10.



=head2 NextToken => Str

The token to be used for the next set of paginated results.



=head2 PropertyAlias => Str

The property alias that identifies the property, such as an OPC-UA
server data stream path (for example,
C</company/windfarm/3/turbine/7/temperature>). For more information,
see Mapping industrial data streams to asset properties
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html)
in the I<AWS IoT SiteWise User Guide>.



=head2 PropertyId => Str

The ID of the asset property.



=head2 B<REQUIRED> Quality => Str

The quality of the asset property value. You can use this parameter as
a filter to choose only the asset property values that have a specific
quality.

Valid values are: C<"GOOD">, C<"BAD">, C<"UNCERTAIN">

=head2 B<REQUIRED> StartTimeInSeconds => Int

The exclusive start of the range from which to interpolate data,
expressed in seconds in Unix epoch time.



=head2 StartTimeOffsetInNanos => Int

The nanosecond offset converted from C<startTimeInSeconds>.



=head2 B<REQUIRED> Type => Str

The interpolation type.

Valid values: C<LINEAR_INTERPOLATION>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInterpolatedAssetPropertyValues in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

