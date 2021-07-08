
package Paws::IoT::ListCustomMetricsResponse;
  use Moose;
  has MetricNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'metricNames');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCustomMetricsResponse

=head1 ATTRIBUTES


=head2 MetricNames => ArrayRef[Str|Undef]

The name of the custom metric.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 _request_id => Str


=cut

