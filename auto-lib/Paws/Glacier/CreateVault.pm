
package Paws::Glacier::CreateVault;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVault');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::CreateVaultOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::CreateVault - Arguments for method CreateVault on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVault on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method CreateVault.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVault.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To create a new vault
    # The following example creates a new vault named my-vault.
    my $CreateVaultOutput = $glacier->CreateVault(
      {
        'AccountId' => '-',
        'VaultName' => 'my-vault'
      }
    );

    # Results:
    my $location = $CreateVaultOutput->location;

    # Returns a L<Paws::Glacier::CreateVaultOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/CreateVault>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID. This value must match the
AWS account ID associated with the credentials used to sign the
request. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you specify your account ID, do not include any hyphens ('-') in the
ID.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVault in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

