
package Paws::MarketplaceCommerceAnalytics::GenerateDataSetResult;
  use Moose;
  has DataSetRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSetRequestId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCommerceAnalytics::GenerateDataSetResult

=head1 ATTRIBUTES


=head2 DataSetRequestId => Str

A unique identifier representing a specific request to the
GenerateDataSet operation. This identifier can be used to correlate a
request with notifications from the SNS topic.


=head2 _request_id => Str


=cut

1;