
package Paws::IoT::StartAuditMitigationActionsTaskResponse;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StartAuditMitigationActionsTaskResponse

=head1 ATTRIBUTES


=head2 TaskId => Str

The unique identifier for the audit mitigation task. This matches the
C<taskId> that you specified in the request.


=head2 _request_id => Str


=cut

