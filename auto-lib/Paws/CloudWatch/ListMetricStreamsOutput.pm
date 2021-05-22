
package Paws::CloudWatch::ListMetricStreamsOutput;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricStreamEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::ListMetricStreamsOutput

=head1 ATTRIBUTES


=head2 Entries => ArrayRef[L<Paws::CloudWatch::MetricStreamEntry>]

The array of metric stream information.


=head2 NextToken => Str

The token that marks the start of the next batch of returned results.
You can use this token in a subsequent operation to get the next batch
of results.


=head2 _request_id => Str


=cut

