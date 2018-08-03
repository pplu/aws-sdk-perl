
package Paws::IoT::ListAuditTasksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::IoT::AuditTaskMetadata]', traits => ['NameInRequest'], request_name => 'tasks');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 Tasks => ArrayRef[L<Paws::IoT::AuditTaskMetadata>]

The audits that were performed during the specified time period.


=head2 _request_id => Str


=cut

