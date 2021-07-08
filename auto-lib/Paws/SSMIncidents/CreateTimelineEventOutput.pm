
package Paws::SSMIncidents::CreateTimelineEventOutput;
  use Moose;
  has EventId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventId', required => 1);
  has IncidentRecordArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'incidentRecordArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::CreateTimelineEventOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventId => Str

The ID of the event for easy reference later.


=head2 B<REQUIRED> IncidentRecordArn => Str

The ARN of the incident record that you added the event to.


=head2 _request_id => Str


=cut

