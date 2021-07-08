
package Paws::IoTSiteWise::ListAssets;
  use Moose;
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'assetModelId');
  has Filter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ListAssetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListAssets - Arguments for method ListAssets on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssets on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ListAssets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssets.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ListAssetsResponse = $iotsitewise->ListAssets(
      AssetModelId => 'MyID',           # OPTIONAL
      Filter       => 'ALL',            # OPTIONAL
      MaxResults   => 1,                # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AssetSummaries = $ListAssetsResponse->AssetSummaries;
    my $NextToken      = $ListAssetsResponse->NextToken;

    # Returns a L<Paws::IoTSiteWise::ListAssetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ListAssets>

=head1 ATTRIBUTES


=head2 AssetModelId => Str

The ID of the asset model by which to filter the list of assets. This
parameter is required if you choose C<ALL> for C<filter>.



=head2 Filter => Str

The filter for the requested list of assets. Choose one of the
following options:

=over

=item *

C<ALL> E<ndash> The list includes all assets for a given asset model
ID. The C<assetModelId> parameter is required if you filter by C<ALL>.

=item *

C<TOP_LEVEL> E<ndash> The list includes only top-level assets in the
asset hierarchy tree.

=back

Default: C<ALL>

Valid values are: C<"ALL">, C<"TOP_LEVEL">

=head2 MaxResults => Int

The maximum number of results to be returned per paginated request.

Default: 50



=head2 NextToken => Str

The token to be used for the next set of paginated results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssets in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

