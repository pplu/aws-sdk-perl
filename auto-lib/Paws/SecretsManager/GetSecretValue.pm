
package Paws::SecretsManager::GetSecretValue;
  use Moose;
  has SecretId => (is => 'ro', isa => 'Str', required => 1);
  has VersionId => (is => 'ro', isa => 'Str');
  has VersionStage => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSecretValue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::GetSecretValueResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::GetSecretValue - Arguments for method GetSecretValue on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSecretValue on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method GetSecretValue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSecretValue.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $GetSecretValueResponse = $secretsmanager->GetSecretValue(
      SecretId     => 'MySecretIdType',
      VersionId    => 'MySecretVersionIdType',       # OPTIONAL
      VersionStage => 'MySecretVersionStageType',    # OPTIONAL
    );

    # Results:
    my $CreatedDate   = $GetSecretValueResponse->CreatedDate;
    my $ARN           = $GetSecretValueResponse->ARN;
    my $VersionStages = $GetSecretValueResponse->VersionStages;
    my $SecretBinary  = $GetSecretValueResponse->SecretBinary;
    my $SecretString  = $GetSecretValueResponse->SecretString;
    my $Name          = $GetSecretValueResponse->Name;
    my $VersionId     = $GetSecretValueResponse->VersionId;

    # Returns a L<Paws::SecretsManager::GetSecretValueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/GetSecretValue>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecretId => Str

Specifies the secret containing the version that you want to retrieve.
You can specify either the Amazon Resource Name (ARN) or the friendly
name of the secret.



=head2 VersionId => Str

Specifies the unique identifier of the version of the secret that you
want to retrieve. If you specify this parameter then don't specify
C<VersionStage>. If you don't specify either a C<VersionStage> or
C<SecretVersionId> then the default is to perform the operation on the
version with the C<VersionStage> value of C<AWSCURRENT>.

This value is typically a UUID-type
(https://wikipedia.org/wiki/Universally_unique_identifier) value with
32 hexadecimal digits.



=head2 VersionStage => Str

Specifies the secret version that you want to retrieve by the staging
label attached to the version.

Staging labels are used to keep track of different versions during the
rotation process. If you use this parameter then don't specify
C<SecretVersionId>. If you don't specify either a C<VersionStage> or
C<SecretVersionId>, then the default is to perform the operation on the
version with the C<VersionStage> value of C<AWSCURRENT>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSecretValue in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

