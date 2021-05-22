
package Paws::AuditManager::ListNotificationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Notifications => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::Notification]', traits => ['NameInRequest'], request_name => 'notifications');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListNotificationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token used to fetch the next set of results.


=head2 Notifications => ArrayRef[L<Paws::AuditManager::Notification>]

The returned list of notifications.


=head2 _request_id => Str


=cut

