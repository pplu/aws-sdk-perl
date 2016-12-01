
package Paws::CloudWatch::GetMetricStatisticsOutput;
  use Moose;
  has Datapoints => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Datapoint]');
  has Label => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetMetricStatisticsOutput

=head1 ATTRIBUTES


=head2 Datapoints => ArrayRef[L<Paws::CloudWatch::Datapoint>]

The data points for the specified metric.


=head2 Label => Str

A label for the specified metric.


=head2 _request_id => Str


=cut

