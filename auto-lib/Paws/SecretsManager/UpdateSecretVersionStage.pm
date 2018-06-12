
package Paws::SecretsManager::UpdateSecretVersionStage;
  use Moose;
  has MoveToVersionId => (is => 'ro', isa => 'Str');
  has RemoveFromVersionId => (is => 'ro', isa => 'Str');
  has SecretId => (is => 'ro', isa => 'Str', required => 1);
  has VersionStage => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSecretVersionStage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::UpdateSecretVersionStageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::UpdateSecretVersionStage - Arguments for method UpdateSecretVersionStage on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSecretVersionStage on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method UpdateSecretVersionStage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSecretVersionStage.

As an example:

  $service_obj->UpdateSecretVersionStage(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/UpdateSecretVersionStage>

=head1 ATTRIBUTES


=head2 MoveToVersionId => Str

(Optional) The secret version ID that you want to add the staging
labels to.

If any of the staging labels are already attached to a different
version of the secret, then they are removed from that version before
adding them to this version.



=head2 RemoveFromVersionId => Str

(Optional) Specifies the secret version ID of the version that the
staging labels are to be removed from.

If you want to move a label to a new version, you do not have to
explicitly remove it with this parameter. Adding a label using the
C<MoveToVersionId> parameter automatically removes it from the old
version. However, if you do include both the "MoveTo" and "RemoveFrom"
parameters, then the move is successful only if the staging labels are
actually present on the "RemoveFrom" version. If a staging label was on
a different version than "RemoveFrom", then the request fails.



=head2 B<REQUIRED> SecretId => Str

Specifies the secret with the version whose list of staging labels you
want to modify. You can specify either the Amazon Resource Name (ARN)
or the friendly name of the secret.



=head2 B<REQUIRED> VersionStage => Str

The list of staging labels to add to this version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSecretVersionStage in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

