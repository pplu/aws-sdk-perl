
package Paws::IoTSiteWise::ListAssetModelsResponse;
  use Moose;
  has AssetModelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelSummary]', traits => ['NameInRequest'], request_name => 'assetModelSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListAssetModelsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetModelSummaries => ArrayRef[L<Paws::IoTSiteWise::AssetModelSummary>]

A list that summarizes each asset model.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

