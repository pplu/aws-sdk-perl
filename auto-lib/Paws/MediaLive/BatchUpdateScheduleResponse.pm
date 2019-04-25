
package Paws::MediaLive::BatchUpdateScheduleResponse;
  use Moose;
  has Creates => (is => 'ro', isa => 'Paws::MediaLive::BatchScheduleActionCreateResult', traits => ['NameInRequest'], request_name => 'creates');
  has Deletes => (is => 'ro', isa => 'Paws::MediaLive::BatchScheduleActionDeleteResult', traits => ['NameInRequest'], request_name => 'deletes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::BatchUpdateScheduleResponse

=head1 ATTRIBUTES


=head2 Creates => L<Paws::MediaLive::BatchScheduleActionCreateResult>

Schedule actions created in the schedule.


=head2 Deletes => L<Paws::MediaLive::BatchScheduleActionDeleteResult>

Schedule actions deleted from the schedule.


=head2 _request_id => Str


=cut

