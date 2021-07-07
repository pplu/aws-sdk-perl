
package Paws::IoTEventsData::BatchAcknowledgeAlarmResponse;
  use Moose;
  has ErrorEntries => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::BatchAlarmActionErrorEntry]', traits => ['NameInRequest'], request_name => 'errorEntries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::BatchAcknowledgeAlarmResponse

=head1 ATTRIBUTES


=head2 ErrorEntries => ArrayRef[L<Paws::IoTEventsData::BatchAlarmActionErrorEntry>]

A list of errors associated with the request, or C<null> if there are
no errors. Each error entry contains an entry ID that helps you
identify the entry that failed.


=head2 _request_id => Str


=cut

