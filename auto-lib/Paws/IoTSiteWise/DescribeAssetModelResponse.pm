
package Paws::IoTSiteWise::DescribeAssetModelResponse;
  use Moose;
  has AssetModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelArn', required => 1);
  has AssetModelCompositeModels => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelCompositeModel]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModels');
  has AssetModelCreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCreationDate', required => 1);
  has AssetModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelDescription', required => 1);
  has AssetModelHierarchies => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelHierarchy]', traits => ['NameInRequest'], request_name => 'assetModelHierarchies', required => 1);
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelId', required => 1);
  has AssetModelLastUpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelLastUpdateDate', required => 1);
  has AssetModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelName', required => 1);
  has AssetModelProperties => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelProperty]', traits => ['NameInRequest'], request_name => 'assetModelProperties', required => 1);
  has AssetModelStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::AssetModelStatus', traits => ['NameInRequest'], request_name => 'assetModelStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAssetModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetModelArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the asset model, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}>


=head2 AssetModelCompositeModels => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModel>]

The list of composite asset models for the asset model.


=head2 B<REQUIRED> AssetModelCreationDate => Str

The date the asset model was created, in Unix epoch time.


=head2 B<REQUIRED> AssetModelDescription => Str

The asset model's description.


=head2 B<REQUIRED> AssetModelHierarchies => ArrayRef[L<Paws::IoTSiteWise::AssetModelHierarchy>]

A list of asset model hierarchies that each contain a
C<childAssetModelId> and a C<hierarchyId> (named C<id>). A hierarchy
specifies allowed parent/child asset relationships for an asset model.


=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model.


=head2 B<REQUIRED> AssetModelLastUpdateDate => Str

The date the asset model was last updated, in Unix epoch time.


=head2 B<REQUIRED> AssetModelName => Str

The name of the asset model.


=head2 B<REQUIRED> AssetModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelProperty>]

The list of asset properties for the asset model.

This object doesn't include properties that you define in composite
models. You can find composite model properties in the
C<assetModelCompositeModels> object.


=head2 B<REQUIRED> AssetModelStatus => L<Paws::IoTSiteWise::AssetModelStatus>

The current status of the asset model, which contains a state and any
error message.


=head2 _request_id => Str


=cut

