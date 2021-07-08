
package Paws::IoTSiteWise::DeleteAssetResponse;
  use Moose;
  has AssetStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::AssetStatus', traits => ['NameInRequest'], request_name => 'assetStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DeleteAssetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetStatus => L<Paws::IoTSiteWise::AssetStatus>

The status of the asset, which contains a state (C<DELETING> after
successfully calling this operation) and any error message.


=head2 _request_id => Str


=cut

