
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

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $UpdateSecretVersionStageResponse =
      $secretsmanager->UpdateSecretVersionStage(
      SecretId            => 'MySecretIdType',
      VersionStage        => 'MySecretVersionStageType',
      MoveToVersionId     => 'MySecretVersionIdType',      # OPTIONAL
      RemoveFromVersionId => 'MySecretVersionIdType',      # OPTIONAL
      );

    # Results:
    my $ARN  = $UpdateSecretVersionStageResponse->ARN;
    my $Name = $UpdateSecretVersionStageResponse->Name;

   # Returns a L<Paws::SecretsManager::UpdateSecretVersionStageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/UpdateSecretVersionStage>

=head1 ATTRIBUTES


=head2 MoveToVersionId => Str

(Optional) The secret version ID that you want to add the staging label
to. If you want to remove a label from a version, then do not specify
this parameter.

If the staging label is already attached to a different version of the
secret, then you must also specify the C<RemoveFromVersionId>
parameter.



=head2 RemoveFromVersionId => Str

Specifies the secret version ID of the version that the staging label
is to be removed from. If the staging label you are trying to attach to
one version is already attached to a different version, then you must
include this parameter and specify the version that the label is to be
removed from. If the label is attached and you either do not specify
this parameter, or the version ID does not match, then the operation
fails.



=head2 B<REQUIRED> SecretId => Str

Specifies the secret with the version whose list of staging labels you
want to modify. You can specify either the Amazon Resource Name (ARN)
or the friendly name of the secret.

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



=head2 B<REQUIRED> VersionStage => Str

The staging label to add to this version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSecretVersionStage in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

