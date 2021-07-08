
package Paws::CodeGuruProfiler::GetNotificationConfigurationResponse;
  use Moose;
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::CodeGuruProfiler::NotificationConfiguration', traits => ['NameInRequest'], request_name => 'notificationConfiguration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::GetNotificationConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotificationConfiguration => L<Paws::CodeGuruProfiler::NotificationConfiguration>

The current notification configuration for this profiling group.


=head2 _request_id => Str


=cut

