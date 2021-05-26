
package Paws::IoT::ListAuditMitigationActionsExecutionsResponse;
  use Moose;
  has ActionsExecutions => (is => 'ro', isa => 'ArrayRef[Paws::IoT::AuditMitigationActionExecutionMetadata]', traits => ['NameInRequest'], request_name => 'actionsExecutions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditMitigationActionsExecutionsResponse

=head1 ATTRIBUTES


=head2 ActionsExecutions => ArrayRef[L<Paws::IoT::AuditMitigationActionExecutionMetadata>]

A set of task execution results based on the input parameters. Details
include the mitigation action applied, start time, and task status.


=head2 NextToken => Str

The token for the next set of results.


=head2 _request_id => Str


=cut

