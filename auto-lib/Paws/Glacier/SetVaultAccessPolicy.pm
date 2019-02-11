
package Paws::Glacier::SetVaultAccessPolicy;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has Policy => (is => 'ro', isa => 'Paws::Glacier::VaultAccessPolicy', traits => ['NameInRequest'], request_name => 'policy');
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Policy');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetVaultAccessPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/access-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::SetVaultAccessPolicy - Arguments for method SetVaultAccessPolicy on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetVaultAccessPolicy on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method SetVaultAccessPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetVaultAccessPolicy.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To set the access-policy on a vault
    # The example configures an access policy for the vault named examplevault.
    $glacier->SetVaultAccessPolicy(
      {
        'AccountId' => '-',
        'Policy'    => {
          'Policy' =>
'{"Version":"2012-10-17","Statement":[{"Sid":"Define-owner-access-rights","Effect":"Allow","Principal":{"AWS":"arn:aws:iam::999999999999:root"},"Action":"glacier:DeleteArchive","Resource":"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault"}]}'
        },
        'VaultName' => 'examplevault'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/SetVaultAccessPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 Policy => L<Paws::Glacier::VaultAccessPolicy>

The vault access policy as a JSON string.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetVaultAccessPolicy in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

