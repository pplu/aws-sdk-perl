
package Paws::AutoScaling::BatchDeleteScheduledActionAnswer;
  use Moose;
  has FailedScheduledActions => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::FailedScheduledUpdateGroupActionRequest]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::BatchDeleteScheduledActionAnswer

=head1 ATTRIBUTES


=head2 FailedScheduledActions => ArrayRef[L<Paws::AutoScaling::FailedScheduledUpdateGroupActionRequest>]

The names of the scheduled actions that could not be deleted, including
an error message.


=head2 _request_id => Str


=cut

