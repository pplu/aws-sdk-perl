
package Paws::SecretsManager::ListSecretVersionIds;
  use Moose;
  has IncludeDeprecated => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSecretVersionIds');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::ListSecretVersionIdsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ListSecretVersionIds - Arguments for method ListSecretVersionIds on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSecretVersionIds on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method ListSecretVersionIds.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSecretVersionIds.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $ListSecretVersionIdsResponse = $secretsmanager->ListSecretVersionIds(
      SecretId          => 'MySecretIdType',
      IncludeDeprecated => 1,                    # OPTIONAL
      MaxResults        => 1,                    # OPTIONAL
      NextToken         => 'MyNextTokenType',    # OPTIONAL
    );

    # Results:
    my $ARN       = $ListSecretVersionIdsResponse->ARN;
    my $Name      = $ListSecretVersionIdsResponse->Name;
    my $NextToken = $ListSecretVersionIdsResponse->NextToken;
    my $Versions  = $ListSecretVersionIdsResponse->Versions;

    # Returns a L<Paws::SecretsManager::ListSecretVersionIdsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/ListSecretVersionIds>

=head1 ATTRIBUTES


=head2 IncludeDeprecated => Bool

(Optional) Specifies that you want the results to include versions that
do not have any staging labels attached to them. Such versions are
considered deprecated and are subject to deletion by Secrets Manager as
needed.



=head2 MaxResults => Int

(Optional) Limits the number of results that you want to include in the
response. If you don't include this parameter, it defaults to a value
that's specific to the operation. If additional items exist beyond the
maximum you specify, the C<NextToken> response element is present and
has a value (isn't null). Include that value as the C<NextToken>
request parameter in the next call to the operation to get the next
part of the results. Note that Secrets Manager might return fewer
results than the maximum even when there are more results available.
You should check C<NextToken> after every operation to ensure that you
receive all of the results.



=head2 NextToken => Str

(Optional) Use this parameter in a request if you receive a
C<NextToken> response in a previous request that indicates that there's
more output available. In a subsequent call, set it to the value of the
previous call's C<NextToken> response to indicate where the output
should continue from.



=head2 B<REQUIRED> SecretId => Str

The identifier for the secret containing the versions you want to list.
You can specify either the Amazon Resource Name (ARN) or the friendly
name of the secret.

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

This class forms part of L<Paws>, documenting arguments for method ListSecretVersionIds in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

