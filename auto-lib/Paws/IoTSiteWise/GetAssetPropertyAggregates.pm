
package Paws::IoTSiteWise::GetAssetPropertyAggregates;
  use Moose;
  has AggregateTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'aggregateTypes', required => 1);
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'assetId');
  has EndDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endDate', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PropertyAlias => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'propertyAlias');
  has PropertyId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'propertyId');
  has Qualities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'qualities');
  has Resolution => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resolution', required => 1);
  has StartDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startDate', required => 1);
  has TimeOrdering => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'timeOrdering');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssetPropertyAggregates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/properties/aggregates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::GetAssetPropertyAggregatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::GetAssetPropertyAggregates - Arguments for method GetAssetPropertyAggregates on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssetPropertyAggregates on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method GetAssetPropertyAggregates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssetPropertyAggregates.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $GetAssetPropertyAggregatesResponse =
      $iotsitewise->GetAssetPropertyAggregates(
      AggregateTypes => [
        'AVERAGE',
        ...  # values: AVERAGE, COUNT, MAXIMUM, MINIMUM, SUM, STANDARD_DEVIATION
      ],
      EndDate       => '1970-01-01T01:00:00',
      Resolution    => 'MyResolution',
      StartDate     => '1970-01-01T01:00:00',
      AssetId       => 'MyID',                    # OPTIONAL
      MaxResults    => 1,                         # OPTIONAL
      NextToken     => 'MyNextToken',             # OPTIONAL
      PropertyAlias => 'MyAssetPropertyAlias',    # OPTIONAL
      PropertyId    => 'MyID',                    # OPTIONAL
      Qualities     => [
        'GOOD', ...                               # values: GOOD, BAD, UNCERTAIN
      ],    # OPTIONAL
      TimeOrdering => 'ASCENDING',    # OPTIONAL
      );

    # Results:
    my $AggregatedValues =
      $GetAssetPropertyAggregatesResponse->AggregatedValues;
    my $NextToken = $GetAssetPropertyAggregatesResponse->NextToken;

    # Returns a L<Paws::IoTSiteWise::GetAssetPropertyAggregatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/GetAssetPropertyAggregates>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregateTypes => ArrayRef[Str|Undef]

The data aggregating function.



=head2 AssetId => Str

The ID of the asset.



=head2 B<REQUIRED> EndDate => Str

The inclusive end of the range from which to query historical data,
expressed in seconds in Unix epoch time.



=head2 MaxResults => Int

The maximum number of results to be returned per paginated request.

Default: 100



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



=head2 Qualities => ArrayRef[Str|Undef]

The quality by which to filter asset data.



=head2 B<REQUIRED> Resolution => Str

The time interval over which to aggregate data.



=head2 B<REQUIRED> StartDate => Str

The exclusive start of the range from which to query historical data,
expressed in seconds in Unix epoch time.



=head2 TimeOrdering => Str

The chronological sorting order of the requested information.

Default: C<ASCENDING>

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssetPropertyAggregates in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

