
package Paws::AuditManager::UpdateSettingsResponse;
  use Moose;
  has Settings => (is => 'ro', isa => 'Paws::AuditManager::Settings', traits => ['NameInRequest'], request_name => 'settings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateSettingsResponse

=head1 ATTRIBUTES


=head2 Settings => L<Paws::AuditManager::Settings>

The current list of settings.


=head2 _request_id => Str


=cut

