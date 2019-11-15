
package Paws::DataExchange::UpdateAsset;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AssetId', required => 1);
  has DataSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSetId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RevisionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAsset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::UpdateAssetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::UpdateAsset - Arguments for method UpdateAsset on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAsset on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method UpdateAsset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAsset.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $UpdateAssetResponse = $dataexchange->UpdateAsset(
      AssetId    => 'My__string',
      DataSetId  => 'My__string',
      Name       => 'MyAssetName',
      RevisionId => 'My__string',

    );

    # Results:
    my $Arn          = $UpdateAssetResponse->Arn;
    my $AssetDetails = $UpdateAssetResponse->AssetDetails;
    my $AssetType    = $UpdateAssetResponse->AssetType;
    my $CreatedAt    = $UpdateAssetResponse->CreatedAt;
    my $DataSetId    = $UpdateAssetResponse->DataSetId;
    my $Id           = $UpdateAssetResponse->Id;
    my $Name         = $UpdateAssetResponse->Name;
    my $RevisionId   = $UpdateAssetResponse->RevisionId;
    my $SourceId     = $UpdateAssetResponse->SourceId;
    my $UpdatedAt    = $UpdateAssetResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::UpdateAssetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/UpdateAsset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The unique identifier for an asset.



=head2 B<REQUIRED> DataSetId => Str

The unique identifier for a data set.



=head2 B<REQUIRED> Name => Str

The name of the asset. When importing from Amazon S3, the S3 object key
is used as the asset name. When exporting to Amazon S3, the asset name
is used as default target S3 object key.



=head2 B<REQUIRED> RevisionId => Str

The unique identifier for a revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAsset in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

