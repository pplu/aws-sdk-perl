
package Paws::IoTSiteWise::DescribeAssetResponse;
  use Moose;
  has AssetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetArn', required => 1);
  has AssetCompositeModels => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetCompositeModel]', traits => ['NameInRequest'], request_name => 'assetCompositeModels');
  has AssetCreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetCreationDate', required => 1);
  has AssetHierarchies => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetHierarchy]', traits => ['NameInRequest'], request_name => 'assetHierarchies', required => 1);
  has AssetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetId', required => 1);
  has AssetLastUpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetLastUpdateDate', required => 1);
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelId', required => 1);
  has AssetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetName', required => 1);
  has AssetProperties => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetProperty]', traits => ['NameInRequest'], request_name => 'assetProperties', required => 1);
  has AssetStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::AssetStatus', traits => ['NameInRequest'], request_name => 'assetStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAssetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the asset, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}>


=head2 AssetCompositeModels => ArrayRef[L<Paws::IoTSiteWise::AssetCompositeModel>]

The composite models for the asset.


=head2 B<REQUIRED> AssetCreationDate => Str

The date the asset was created, in Unix epoch time.


=head2 B<REQUIRED> AssetHierarchies => ArrayRef[L<Paws::IoTSiteWise::AssetHierarchy>]

A list of asset hierarchies that each contain a C<hierarchyId>. A
hierarchy specifies allowed parent/child asset relationships.


=head2 B<REQUIRED> AssetId => Str

The ID of the asset.


=head2 B<REQUIRED> AssetLastUpdateDate => Str

The date the asset was last updated, in Unix epoch time.


=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model that was used to create the asset.


=head2 B<REQUIRED> AssetName => Str

The name of the asset.


=head2 B<REQUIRED> AssetProperties => ArrayRef[L<Paws::IoTSiteWise::AssetProperty>]

The list of asset properties for the asset.

This object doesn't include properties that you define in composite
models. You can find composite model properties in the
C<assetCompositeModels> object.


=head2 B<REQUIRED> AssetStatus => L<Paws::IoTSiteWise::AssetStatus>

The current status of the asset, which contains a state and any error
message.


=head2 _request_id => Str


=cut

