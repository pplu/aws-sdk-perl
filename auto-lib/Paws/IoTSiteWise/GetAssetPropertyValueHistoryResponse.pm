
package Paws::IoTSiteWise::GetAssetPropertyValueHistoryResponse;
  use Moose;
  has AssetPropertyValueHistory => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetPropertyValue]', traits => ['NameInRequest'], request_name => 'assetPropertyValueHistory', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::GetAssetPropertyValueHistoryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetPropertyValueHistory => ArrayRef[L<Paws::IoTSiteWise::AssetPropertyValue>]

The asset property's value history.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

