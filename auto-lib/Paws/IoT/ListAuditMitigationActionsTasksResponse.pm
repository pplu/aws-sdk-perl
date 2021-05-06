
package Paws::IoT::ListAuditMitigationActionsTasksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::IoT::AuditMitigationActionsTaskMetadata]', traits => ['NameInRequest'], request_name => 'tasks');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditMitigationActionsTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results.


=head2 Tasks => ArrayRef[L<Paws::IoT::AuditMitigationActionsTaskMetadata>]

The collection of audit mitigation tasks that matched the filter
criteria.


=head2 _request_id => Str


=cut

