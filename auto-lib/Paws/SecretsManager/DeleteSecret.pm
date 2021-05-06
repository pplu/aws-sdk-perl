
package Paws::SecretsManager::DeleteSecret;
  use Moose;
  has ForceDeleteWithoutRecovery => (is => 'ro', isa => 'Bool');
  has RecoveryWindowInDays => (is => 'ro', isa => 'Int');
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSecret');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::DeleteSecretResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::DeleteSecret - Arguments for method DeleteSecret on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSecret on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method DeleteSecret.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSecret.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $DeleteSecretResponse = $secretsmanager->DeleteSecret(
      SecretId                   => 'MySecretIdType',
      ForceDeleteWithoutRecovery => 1,                  # OPTIONAL
      RecoveryWindowInDays       => 1,                  # OPTIONAL
    );

    # Results:
    my $ARN          = $DeleteSecretResponse->ARN;
    my $DeletionDate = $DeleteSecretResponse->DeletionDate;
    my $Name         = $DeleteSecretResponse->Name;

    # Returns a L<Paws::SecretsManager::DeleteSecretResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/DeleteSecret>

=head1 ATTRIBUTES


=head2 ForceDeleteWithoutRecovery => Bool

(Optional) Specifies that the secret is to be deleted without any
recovery window. You can't use both this parameter and the
C<RecoveryWindowInDays> parameter in the same API call.

An asynchronous background process performs the actual deletion, so
there can be a short delay before the operation completes. If you write
code to delete and then immediately recreate a secret with the same
name, ensure that your code includes appropriate back off and retry
logic.

Use this parameter with caution. This parameter causes the operation to
skip the normal waiting period before the permanent deletion that AWS
would normally impose with the C<RecoveryWindowInDays> parameter. If
you delete a secret with the C<ForceDeleteWithouRecovery> parameter,
then you have no opportunity to recover the secret. It is permanently
lost.



=head2 RecoveryWindowInDays => Int

(Optional) Specifies the number of days that Secrets Manager waits
before it can delete the secret. You can't use both this parameter and
the C<ForceDeleteWithoutRecovery> parameter in the same API call.

This value can range from 7 to 30 days. The default value is 30.



=head2 B<REQUIRED> SecretId => Str

Specifies the secret that you want to delete. You can specify either
the Amazon Resource Name (ARN) or the friendly name of the secret.

If you specify an ARN, we generally recommend that you specify a
complete ARN. You can specify a partial ARN tooE<mdash>for example, if
you donE<rsquo>t include the final hyphen and six random characters
that Secrets Manager adds at the end of the ARN when you created the
secret. A partial ARN match can work as long as it uniquely matches
only one secret. However, if your secret has a name that ends in a
hyphen followed by six characters (before Secrets Manager adds the
hyphen and six characters to the ARN) and you try to use that as a
partial ARN, then those characters cause Secrets Manager to assume that
youE<rsquo>re specifying a complete ARN. This confusion can cause
unexpected results. To avoid this situation, we recommend that you
donE<rsquo>t create secret names that end with a hyphen followed by six
characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSecret in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

