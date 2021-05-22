
package Paws::IoTSiteWise::DeleteAssetModelResponse;
  use Moose;
  has AssetModelStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::AssetModelStatus', traits => ['NameInRequest'], request_name => 'assetModelStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DeleteAssetModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetModelStatus => L<Paws::IoTSiteWise::AssetModelStatus>

The status of the asset model, which contains a state (C<DELETING>
after successfully calling this operation) and any error message.


=head2 _request_id => Str


=cut

