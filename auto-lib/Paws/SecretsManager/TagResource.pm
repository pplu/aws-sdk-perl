
package Paws::SecretsManager::TagResource;
  use Moose;
  has SecretId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::TagResource - Arguments for method TagResource on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
  # To add tags to a secret
  # The following example shows how to attach two tags each with a Key and Value
  # to a secret. There is no output from this API. To see the result, use the
  # DescribeSecret operation.
    $secretsmanager->TagResource(
      'SecretId' => 'MyExampleSecret',
      'Tags'     => [

        {
          'Key'   => 'FirstTag',
          'Value' => 'SomeValue'
        },

        {
          'Key'   => 'SecondTag',
          'Value' => 'AnotherValue'
        }
      ]
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecretId => Str

The identifier for the secret that you want to attach tags to. You can
specify either the Amazon Resource Name (ARN) or the friendly name of
the secret.

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
donE<rsquo>t create secret names ending with a hyphen followed by six
characters.

If you specify an incomplete ARN without the random suffix, and instead
provide the 'friendly name', you I<must> not include the random suffix.
If you do include the random suffix added by Secrets Manager, you
receive either a I<ResourceNotFoundException> or an
I<AccessDeniedException> error, depending on your permissions.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::SecretsManager::Tag>]

The tags to attach to the secret. Each element in the list consists of
a C<Key> and a C<Value>.

This parameter to the API requires a JSON text string argument. For
information on how to format a JSON parameter for the various command
line tool environments, see Using JSON for Parameters
(https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json)
in the I<AWS CLI User Guide>. For the AWS CLI, you can also use the
syntax: C<--Tags Key="Key1",Value="Value1"
Key="Key2",Value="Value2"[,E<hellip>]>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

