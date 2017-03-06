
package Paws::MTurk::NotifyWorkersResponse;
  use Moose;
  has NotifyWorkersFailureStatuses => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::NotifyWorkersFailureStatus]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::NotifyWorkersResponse

=head1 ATTRIBUTES


=head2 NotifyWorkersFailureStatuses => ArrayRef[L<Paws::MTurk::NotifyWorkersFailureStatus>]

When MTurk sends notifications to the list of Workers, it returns back
any failures it encounters in this list of NotifyWorkersFailureStatus
objects.


=head2 _request_id => Str


=cut

1;