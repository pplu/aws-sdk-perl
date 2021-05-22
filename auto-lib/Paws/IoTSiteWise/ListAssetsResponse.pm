
package Paws::IoTSiteWise::ListAssetsResponse;
  use Moose;
  has AssetSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetSummary]', traits => ['NameInRequest'], request_name => 'assetSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListAssetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetSummaries => ArrayRef[L<Paws::IoTSiteWise::AssetSummary>]

A list that summarizes each asset.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

