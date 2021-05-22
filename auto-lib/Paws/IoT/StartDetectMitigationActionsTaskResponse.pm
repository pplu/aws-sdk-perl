
package Paws::IoT::StartDetectMitigationActionsTaskResponse;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StartDetectMitigationActionsTaskResponse

=head1 ATTRIBUTES


=head2 TaskId => Str

The unique identifier of the task.


=head2 _request_id => Str


=cut

