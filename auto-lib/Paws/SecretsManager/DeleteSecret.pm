
package Paws::SecretsManager::DeleteSecret;
  use Moose;
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

As an example:

  $service_obj->DeleteSecret(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/DeleteSecret>

=head1 ATTRIBUTES


=head2 RecoveryWindowInDays => Int

(Optional) Specifies the number of days that Secrets Manager waits
before it can delete the secret.

This value can range from 7 to 30 days. The default value is 30.



=head2 B<REQUIRED> SecretId => Str

Specifies the secret that you want to delete. You can specify either
the Amazon Resource Name (ARN) or the friendly name of the secret.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSecret in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

