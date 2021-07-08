
package Paws::SSMIncidents::GetTimelineEventOutput;
  use Moose;
  has Event => (is => 'ro', isa => 'Paws::SSMIncidents::TimelineEvent', traits => ['NameInRequest'], request_name => 'event', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::GetTimelineEventOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Event => L<Paws::SSMIncidents::TimelineEvent>

Details about the timeline event.


=head2 _request_id => Str


=cut

