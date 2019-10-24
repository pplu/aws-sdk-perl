
package Paws::Glacier::GetVaultNotificationsOutput;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VaultNotificationConfig');
  use Types::Standard qw/Str/;
  use Paws::Glacier::Types qw/Glacier_VaultNotificationConfig/;
  has VaultNotificationConfig => (is => 'ro', isa => Glacier_VaultNotificationConfig);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VaultNotificationConfig' => {
                                              'class' => 'Paws::Glacier::VaultNotificationConfig',
                                              'type' => 'Glacier_VaultNotificationConfig'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'VaultNotificationConfig' => 'vaultNotificationConfig'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::GetVaultNotificationsOutput

=head1 ATTRIBUTES


=head2 VaultNotificationConfig => Glacier_VaultNotificationConfig

Returns the notification configuration set on the vault.


=head2 _request_id => Str


=cut

