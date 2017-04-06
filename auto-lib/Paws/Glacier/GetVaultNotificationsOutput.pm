
package Paws::Glacier::GetVaultNotificationsOutput;
  use Moose;
  has VaultNotificationConfig => (is => 'ro', isa => 'Paws::Glacier::VaultNotificationConfig', traits => ['NameInRequest'], request_name => 'vaultNotificationConfig');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VaultNotificationConfig');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::GetVaultNotificationsOutput

=head1 ATTRIBUTES


=head2 VaultNotificationConfig => L<Paws::Glacier::VaultNotificationConfig>

Returns the notification configuration set on the vault.


=head2 _request_id => Str


=cut

