
package Paws::IoTSiteWise::ListProjectAssetsResponse;
  use Moose;
  has AssetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'assetIds', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListProjectAssetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetIds => ArrayRef[Str|Undef]

A list that contains the IDs of each asset associated with the project.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

