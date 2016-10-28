
package Paws::SimpleWorkflow::ActivityTaskStatus;
  use Moose;
  has CancelRequested => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'cancelRequested' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTaskStatus

=head1 ATTRIBUTES


=head2 B<REQUIRED> CancelRequested => Bool

Set to C<true> if cancellation of the task is requested.




=cut

1;