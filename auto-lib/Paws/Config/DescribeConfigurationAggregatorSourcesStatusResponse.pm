
package Paws::Config::DescribeConfigurationAggregatorSourcesStatusResponse;
  use Moose;
  has AggregatedSourceStatusList => (is => 'ro', isa => 'ArrayRef[Paws::Config::AggregatedSourceStatus]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigurationAggregatorSourcesStatusResponse

=head1 ATTRIBUTES


=head2 AggregatedSourceStatusList => ArrayRef[L<Paws::Config::AggregatedSourceStatus>]

Returns an AggregatedSourceStatus object.


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;