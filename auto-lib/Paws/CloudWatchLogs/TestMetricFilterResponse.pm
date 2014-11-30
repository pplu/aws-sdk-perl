
package Paws::CloudWatchLogs::TestMetricFilterResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has matches => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::MetricFilterMatchRecord]');

}

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::TestMetricFilterResponse

=head1 ATTRIBUTES

=head2 matches => ArrayRef[Paws::CloudWatchLogs::MetricFilterMatchRecord]

  


=cut

1;