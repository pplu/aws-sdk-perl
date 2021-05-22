
package Paws::IoTSiteWise::GetAssetPropertyAggregatesResponse;
  use Moose;
  has AggregatedValues => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AggregatedValue]', traits => ['NameInRequest'], request_name => 'aggregatedValues', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::GetAssetPropertyAggregatesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregatedValues => ArrayRef[L<Paws::IoTSiteWise::AggregatedValue>]

The requested aggregated values.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

