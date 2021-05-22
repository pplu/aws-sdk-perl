
package Paws::CodeGuruProfiler::RemoveNotificationChannelResponse;
  use Moose;
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::CodeGuruProfiler::NotificationConfiguration', traits => ['NameInRequest'], request_name => 'notificationConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::RemoveNotificationChannelResponse

=head1 ATTRIBUTES


=head2 NotificationConfiguration => L<Paws::CodeGuruProfiler::NotificationConfiguration>

The new notification configuration for this profiling group.


=head2 _request_id => Str


=cut

