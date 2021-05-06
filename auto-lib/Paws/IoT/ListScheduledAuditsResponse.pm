
package Paws::IoT::ListScheduledAuditsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ScheduledAudits => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ScheduledAuditMetadata]', traits => ['NameInRequest'], request_name => 'scheduledAudits');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListScheduledAuditsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 ScheduledAudits => ArrayRef[L<Paws::IoT::ScheduledAuditMetadata>]

The list of scheduled audits.


=head2 _request_id => Str


=cut

