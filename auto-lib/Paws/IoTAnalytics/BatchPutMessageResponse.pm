
package Paws::IoTAnalytics::BatchPutMessageResponse;
  use Moose;
  has BatchPutMessageErrorEntries => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::BatchPutMessageErrorEntry]', traits => ['NameInRequest'], request_name => 'batchPutMessageErrorEntries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::BatchPutMessageResponse

=head1 ATTRIBUTES


=head2 BatchPutMessageErrorEntries => ArrayRef[L<Paws::IoTAnalytics::BatchPutMessageErrorEntry>]

A list of any errors encountered when sending the messages to the
channel.


=head2 _request_id => Str


=cut

