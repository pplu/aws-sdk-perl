
package Paws::IoT::ListDetectMitigationActionsExecutionsResponse;
  use Moose;
  has ActionsExecutions => (is => 'ro', isa => 'ArrayRef[Paws::IoT::DetectMitigationActionExecution]', traits => ['NameInRequest'], request_name => 'actionsExecutions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListDetectMitigationActionsExecutionsResponse

=head1 ATTRIBUTES


=head2 ActionsExecutions => ArrayRef[L<Paws::IoT::DetectMitigationActionExecution>]

List of actions executions.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 _request_id => Str


=cut

