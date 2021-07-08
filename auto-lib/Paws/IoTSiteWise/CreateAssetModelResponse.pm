
package Paws::IoTSiteWise::CreateAssetModelResponse;
  use Moose;
  has AssetModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelArn', required => 1);
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelId', required => 1);
  has AssetModelStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::AssetModelStatus', traits => ['NameInRequest'], request_name => 'assetModelStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateAssetModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetModelArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the asset model, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}>


=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model. You can use this ID when you call other AWS
IoT SiteWise APIs.


=head2 B<REQUIRED> AssetModelStatus => L<Paws::IoTSiteWise::AssetModelStatus>

The status of the asset model, which contains a state (C<CREATING>
after successfully calling this operation) and any error message.


=head2 _request_id => Str


=cut

