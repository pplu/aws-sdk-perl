
package Paws::IoTSiteWise::ListAssociatedAssets;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetId', required => 1);
  has HierarchyId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'hierarchyId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TraversalDirection => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'traversalDirection');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssociatedAssets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assets/{assetId}/hierarchies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ListAssociatedAssetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListAssociatedAssets - Arguments for method ListAssociatedAssets on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssociatedAssets on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ListAssociatedAssets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssociatedAssets.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ListAssociatedAssetsResponse = $iotsitewise->ListAssociatedAssets(
      AssetId            => 'MyID',
      HierarchyId        => 'MyID',           # OPTIONAL
      MaxResults         => 1,                # OPTIONAL
      NextToken          => 'MyNextToken',    # OPTIONAL
      TraversalDirection => 'PARENT',         # OPTIONAL
    );

    # Results:
    my $AssetSummaries = $ListAssociatedAssetsResponse->AssetSummaries;
    my $NextToken      = $ListAssociatedAssetsResponse->NextToken;

    # Returns a L<Paws::IoTSiteWise::ListAssociatedAssetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ListAssociatedAssets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The ID of the asset to query.



=head2 HierarchyId => Str

The ID of the hierarchy by which child assets are associated to the
asset. To find a hierarchy ID, use the DescribeAsset
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAsset.html)
or DescribeAssetModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html)
operations. This parameter is required if you choose C<CHILD> for
C<traversalDirection>.

For more information, see Asset hierarchies
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html)
in the I<AWS IoT SiteWise User Guide>.



=head2 MaxResults => Int

The maximum number of results to be returned per paginated request.

Default: 50



=head2 NextToken => Str

The token to be used for the next set of paginated results.



=head2 TraversalDirection => Str

The direction to list associated assets. Choose one of the following
options:

=over

=item *

C<CHILD> E<ndash> The list includes all child assets associated to the
asset. The C<hierarchyId> parameter is required if you choose C<CHILD>.

=item *

C<PARENT> E<ndash> The list includes the asset's parent asset.

=back

Default: C<CHILD>

Valid values are: C<"PARENT">, C<"CHILD">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssociatedAssets in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

