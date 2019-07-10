
package Paws::IoTEventsData::BatchPutMessageResponse;
  use Moose;
  has BatchPutMessageErrorEntries => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::BatchPutMessageErrorEntry]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::BatchPutMessageResponse

=head1 ATTRIBUTES


=head2 BatchPutMessageErrorEntries => ArrayRef[L<Paws::IoTEventsData::BatchPutMessageErrorEntry>]

A list of any errors encountered when sending the messages.


=head2 _request_id => Str


=cut

