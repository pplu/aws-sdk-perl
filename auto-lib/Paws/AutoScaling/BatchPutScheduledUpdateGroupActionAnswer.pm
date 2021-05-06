
package Paws::AutoScaling::BatchPutScheduledUpdateGroupActionAnswer;
  use Moose;
  has FailedScheduledUpdateGroupActions => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::FailedScheduledUpdateGroupActionRequest]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::BatchPutScheduledUpdateGroupActionAnswer

=head1 ATTRIBUTES


=head2 FailedScheduledUpdateGroupActions => ArrayRef[L<Paws::AutoScaling::FailedScheduledUpdateGroupActionRequest>]

The names of the scheduled actions that could not be created or
updated, including an error message.


=head2 _request_id => Str


=cut

