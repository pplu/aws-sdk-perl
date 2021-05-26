
package Paws::SSM::GetCalendarStateResponse;
  use Moose;
  has AtTime => (is => 'ro', isa => 'Str');
  has NextTransitionTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetCalendarStateResponse

=head1 ATTRIBUTES


=head2 AtTime => Str

The time, as an ISO 8601 (https://en.wikipedia.org/wiki/ISO_8601)
string, that you specified in your command. If you did not specify a
time, C<GetCalendarState> uses the current time.


=head2 NextTransitionTime => Str

The time, as an ISO 8601 (https://en.wikipedia.org/wiki/ISO_8601)
string, that the calendar state will change. If the current calendar
state is C<OPEN>, C<NextTransitionTime> indicates when the calendar
state changes to C<CLOSED>, and vice-versa.


=head2 State => Str

The state of the calendar. An C<OPEN> calendar indicates that actions
are allowed to proceed, and a C<CLOSED> calendar indicates that actions
are not allowed to proceed.

Valid values are: C<"OPEN">, C<"CLOSED">
=head2 _request_id => Str


=cut

1;