
package Paws::Glacier::InitiateVaultLock;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has Policy => (is => 'ro', isa => 'Paws::Glacier::VaultLockPolicy', traits => ['NameInRequest'], request_name => 'policy');
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Policy');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InitiateVaultLock');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/lock-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::InitiateVaultLockOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::InitiateVaultLock - Arguments for method InitiateVaultLock on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InitiateVaultLock on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method InitiateVaultLock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InitiateVaultLock.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To initiate the vault locking process
    # The example initiates the vault locking process for the vault named
    # my-vault.
    my $InitiateVaultLockOutput = $glacier->InitiateVaultLock(
      {
        'AccountId' => '-',
        'Policy'    => {
          'Policy' =>
'{"Version":"2012-10-17","Statement":[{"Sid":"Define-vault-lock","Effect":"Deny","Principal":{"AWS":"arn:aws:iam::999999999999:root"},"Action":"glacier:DeleteArchive","Resource":"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault","Condition":{"NumericLessThanEquals":{"glacier:ArchiveAgeinDays":"365"}}}]}'
        },
        'VaultName' => 'my-vault'
      }
    );

    # Results:
    my $lockId = $InitiateVaultLockOutput->lockId;

    # Returns a L<Paws::Glacier::InitiateVaultLockOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/InitiateVaultLock>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID. This value must match the
AWS account ID associated with the credentials used to sign the
request. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you specify your account ID, do not include any hyphens ('-') in the
ID.



=head2 Policy => L<Paws::Glacier::VaultLockPolicy>

The vault lock policy as a JSON string, which uses "\" as an escape
character.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InitiateVaultLock in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

