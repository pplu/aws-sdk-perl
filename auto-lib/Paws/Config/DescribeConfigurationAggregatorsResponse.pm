
package Paws::Config::DescribeConfigurationAggregatorsResponse;
  use Moose;
  has ConfigurationAggregators => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigurationAggregator]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigurationAggregatorsResponse

=head1 ATTRIBUTES


=head2 ConfigurationAggregators => ArrayRef[L<Paws::Config::ConfigurationAggregator>]

Returns a ConfigurationAggregators object.


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;