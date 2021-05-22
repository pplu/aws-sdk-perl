
package Paws::IoTSiteWise::ListAssetRelationshipsResponse;
  use Moose;
  has AssetRelationshipSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetRelationshipSummary]', traits => ['NameInRequest'], request_name => 'assetRelationshipSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListAssetRelationshipsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetRelationshipSummaries => ArrayRef[L<Paws::IoTSiteWise::AssetRelationshipSummary>]

A list that summarizes each asset relationship.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

