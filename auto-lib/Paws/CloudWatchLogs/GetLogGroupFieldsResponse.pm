
package Paws::CloudWatchLogs::GetLogGroupFieldsResponse;
  use Moose;
  has LogGroupFields => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::LogGroupField]', traits => ['NameInRequest'], request_name => 'logGroupFields' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogGroupFieldsResponse

=head1 ATTRIBUTES


=head2 LogGroupFields => ArrayRef[L<Paws::CloudWatchLogs::LogGroupField>]

The array of fields found in the query. Each object in the array
contains the name of the field, along with the percentage of time it
appeared in the log events that were queried.


=head2 _request_id => Str


=cut

1;