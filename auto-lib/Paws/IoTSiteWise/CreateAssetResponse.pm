
package Paws::IoTSiteWise::CreateAssetResponse;
  use Moose;
  has AssetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetArn', required => 1);
  has AssetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetId', required => 1);
  has AssetStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::AssetStatus', traits => ['NameInRequest'], request_name => 'assetStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateAssetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the asset, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}>


=head2 B<REQUIRED> AssetId => Str

The ID of the asset. This ID uniquely identifies the asset within AWS
IoT SiteWise and can be used with other AWS IoT SiteWise APIs.


=head2 B<REQUIRED> AssetStatus => L<Paws::IoTSiteWise::AssetStatus>

The status of the asset, which contains a state (C<CREATING> after
successfully calling this operation) and any error message.


=head2 _request_id => Str


=cut

