
package Paws::FSX::CancelDataRepositoryTaskResponse;
  use Moose;
  has Lifecycle => (is => 'ro', isa => 'Str');
  has TaskId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CancelDataRepositoryTaskResponse

=head1 ATTRIBUTES


=head2 Lifecycle => Str

The lifecycle status of the data repository task, as follows:

=over

=item *

C<PENDING> - Amazon FSx has not started the task.

=item *

C<EXECUTING> - Amazon FSx is processing the task.

=item *

C<FAILED> - Amazon FSx was not able to complete the task. For example,
there may be files the task failed to process. The
DataRepositoryTaskFailureDetails property provides more information
about task failures.

=item *

C<SUCCEEDED> - FSx completed the task successfully.

=item *

C<CANCELED> - Amazon FSx canceled the task and it did not complete.

=item *

C<CANCELING> - FSx is in process of canceling the task.

=back


Valid values are: C<"PENDING">, C<"EXECUTING">, C<"FAILED">, C<"SUCCEEDED">, C<"CANCELED">, C<"CANCELING">
=head2 TaskId => Str

The ID of the task being canceled.


=head2 _request_id => Str


=cut

1;