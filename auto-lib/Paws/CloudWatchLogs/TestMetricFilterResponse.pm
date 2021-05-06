
package Paws::CloudWatchLogs::TestMetricFilterResponse;
  use Moose;
  has Matches => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::MetricFilterMatchRecord]', traits => ['NameInRequest'], request_name => 'matches' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::TestMetricFilterResponse

=head1 ATTRIBUTES


=head2 Matches => ArrayRef[L<Paws::CloudWatchLogs::MetricFilterMatchRecord>]

The matched events.


=head2 _request_id => Str


=cut

1;