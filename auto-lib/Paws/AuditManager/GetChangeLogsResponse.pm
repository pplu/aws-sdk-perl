
package Paws::AuditManager::GetChangeLogsResponse;
  use Moose;
  has ChangeLogs => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::ChangeLog]', traits => ['NameInRequest'], request_name => 'changeLogs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetChangeLogsResponse

=head1 ATTRIBUTES


=head2 ChangeLogs => ArrayRef[L<Paws::AuditManager::ChangeLog>]

The list of user activity for the control.


=head2 NextToken => Str

The pagination token used to fetch the next set of results.


=head2 _request_id => Str


=cut

