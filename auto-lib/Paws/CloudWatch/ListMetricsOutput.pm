
package Paws::CloudWatch::ListMetricsOutput;
  use Moose;
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Metric]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::ListMetricsOutput

=head1 ATTRIBUTES


=head2 Metrics => ArrayRef[L<Paws::CloudWatch::Metric>]

The metrics.


=head2 NextToken => Str

The token that marks the start of the next batch of returned results.


=head2 _request_id => Str


=cut

