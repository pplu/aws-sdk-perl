
package Paws::CloudWatch::GetMetricWidgetImageOutput;
  use Moose;
  has MetricWidgetImage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetMetricWidgetImageOutput

=head1 ATTRIBUTES


=head2 MetricWidgetImage => Str

The image of the graph, in the output format specified.


=head2 _request_id => Str


=cut

