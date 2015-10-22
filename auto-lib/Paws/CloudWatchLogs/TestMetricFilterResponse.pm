
package Paws::CloudWatchLogs::TestMetricFilterResponse;
  use Moose;
  has Matches => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::MetricFilterMatchRecord]', traits => ['Unwrapped'], xmlname => 'matches' );


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::TestMetricFilterResponse

=head1 ATTRIBUTES

=head2 Matches => ArrayRef[L<Paws::CloudWatchLogs::MetricFilterMatchRecord>]

  


=cut

1;