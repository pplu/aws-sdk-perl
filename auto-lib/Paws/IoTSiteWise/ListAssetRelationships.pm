
package Paws::IoTSiteWise::ListAssetRelationships;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TraversalType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'traversalType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssetRelationships');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assets/{assetId}/assetRelationships');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ListAssetRelationshipsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListAssetRelationships - Arguments for method ListAssetRelationships on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssetRelationships on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ListAssetRelationships.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssetRelationships.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ListAssetRelationshipsResponse = $iotsitewise->ListAssetRelationships(
      AssetId       => 'MyID',
      TraversalType => 'PATH_TO_ROOT',
      MaxResults    => 1,                # OPTIONAL
      NextToken     => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AssetRelationshipSummaries =
      $ListAssetRelationshipsResponse->AssetRelationshipSummaries;
    my $NextToken = $ListAssetRelationshipsResponse->NextToken;

    # Returns a L<Paws::IoTSiteWise::ListAssetRelationshipsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ListAssetRelationships>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The ID of the asset.



=head2 MaxResults => Int

The maximum number of results to be returned per paginated request.



=head2 NextToken => Str

The token to be used for the next set of paginated results.



=head2 B<REQUIRED> TraversalType => Str

The type of traversal to use to identify asset relationships. Choose
the following option:

=over

=item *

C<PATH_TO_ROOT> E<ndash> Identify the asset's parent assets up to the
root asset. The asset that you specify in C<assetId> is the first
result in the list of C<assetRelationshipSummaries>, and the root asset
is the last result.

=back


Valid values are: C<"PATH_TO_ROOT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssetRelationships in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

