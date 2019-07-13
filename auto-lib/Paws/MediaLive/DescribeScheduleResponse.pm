
package Paws::MediaLive::DescribeScheduleResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ScheduleActions => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::ScheduleAction]', traits => ['NameInRequest'], request_name => 'scheduleActions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeScheduleResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The next token; for use in pagination.


=head2 ScheduleActions => ArrayRef[L<Paws::MediaLive::ScheduleAction>]

The list of actions in the schedule.


=head2 _request_id => Str


=cut

