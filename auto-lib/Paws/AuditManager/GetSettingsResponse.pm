
package Paws::AuditManager::GetSettingsResponse;
  use Moose;
  has Settings => (is => 'ro', isa => 'Paws::AuditManager::Settings', traits => ['NameInRequest'], request_name => 'settings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetSettingsResponse

=head1 ATTRIBUTES


=head2 Settings => L<Paws::AuditManager::Settings>

The settings object that holds all supported AWS Audit Manager
settings.


=head2 _request_id => Str


=cut

