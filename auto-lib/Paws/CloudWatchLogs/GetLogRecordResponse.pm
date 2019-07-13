
package Paws::CloudWatchLogs::GetLogRecordResponse;
  use Moose;
  has LogRecord => (is => 'ro', isa => 'Paws::CloudWatchLogs::LogRecord', traits => ['NameInRequest'], request_name => 'logRecord' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogRecordResponse

=head1 ATTRIBUTES


=head2 LogRecord => L<Paws::CloudWatchLogs::LogRecord>

The requested log event, as a JSON string.


=head2 _request_id => Str


=cut

1;