
package Paws::Glacier::SetVaultNotifications;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);
  has VaultNotificationConfig => (is => 'ro', isa => 'Paws::Glacier::VaultNotificationConfig', traits => ['NameInRequest'], request_name => 'vaultNotificationConfig');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VaultNotificationConfig');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetVaultNotifications');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/notification-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::SetVaultNotifications - Arguments for method SetVaultNotifications on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetVaultNotifications on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method SetVaultNotifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetVaultNotifications.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
# To configure a vault to post a message to an Amazon SNS topic when jobs complete
# The example sets the examplevault notification configuration.
    $glacier->SetVaultNotifications(
      {
        'AccountId'               => '-',
        'VaultName'               => 'examplevault',
        'VaultNotificationConfig' => {
          'Events' =>
            [ 'ArchiveRetrievalCompleted', 'InventoryRetrievalCompleted' ],
          'SNSTopic' => 'arn:aws:sns:us-west-2:012345678901:mytopic'
        }
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/SetVaultNotifications>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.



=head2 VaultNotificationConfig => L<Paws::Glacier::VaultNotificationConfig>

Provides options for specifying notification configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetVaultNotifications in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

