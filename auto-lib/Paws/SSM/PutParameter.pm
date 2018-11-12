
package Paws::SSM::PutParameter;
  use Moose;
  has AllowedPattern => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Overwrite => (is => 'ro', isa => 'Bool');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutParameter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::PutParameterResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PutParameter - Arguments for method PutParameter on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutParameter on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method PutParameter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutParameter.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $PutParameterResult = $ssm->PutParameter(
      Name           => 'MyPSParameterName',
      Type           => 'String',
      Value          => 'MyPSParameterValue',
      AllowedPattern => 'MyAllowedPattern',          # OPTIONAL
      Description    => 'MyParameterDescription',    # OPTIONAL
      KeyId          => 'MyParameterKeyId',          # OPTIONAL
      Overwrite      => 1,                           # OPTIONAL
    );

    # Results:
    my $Version = $PutParameterResult->Version;

    # Returns a L<Paws::SSM::PutParameterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/PutParameter>

=head1 ATTRIBUTES


=head2 AllowedPattern => Str

A regular expression used to validate the parameter value. For example,
for String types with values restricted to numbers, you can specify the
following: AllowedPattern=^\d+$



=head2 Description => Str

Information about the parameter that you want to add to the system.
Optional but recommended.

Do not enter personally identifiable information in this field.



=head2 KeyId => Str

The KMS Key ID that you want to use to encrypt a parameter. Either the
default AWS Key Management Service (AWS KMS) key automatically assigned
to your AWS account or a custom key. Required for parameters that use
the C<SecureString> data type.

If you don't specify a key ID, the system uses the default key
associated with your AWS account.

=over

=item *

To use your default AWS KMS key, choose the C<SecureString> data type,
and do I<not> specify the C<Key ID> when you create the parameter. The
system automatically populates C<Key ID> with your default KMS key.

=item *

To use a custom KMS key, choose the C<SecureString> data type with the
C<Key ID> parameter.

=back




=head2 B<REQUIRED> Name => Str

The fully qualified name of the parameter that you want to add to the
system. The fully qualified name includes the complete hierarchy of the
parameter path and name. For example:
C</Dev/DBServer/MySQL/db-string13>

Naming Constraints:

=over

=item *

Parameter names are case sensitive.

=item *

A parameter name must be unique within an AWS Region

=item *

A parameter name can't be prefixed with "aws" or "ssm"
(case-insensitive).

=item *

Parameter names can include only the following symbols and letters:
C<a-zA-Z0-9_.-/>

=item *

A parameter name can't include spaces.

=item *

Parameter hierarchies are limited to a maximum depth of fifteen levels.

=back

For additional information about valid values for parameter names, see
Requirements and Constraints for Parameter Names
(http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html)
in the I<AWS Systems Manager User Guide>.

The maximum length constraint listed below includes capacity for
additional system attributes that are not part of the name. The maximum
length for the fully qualified parameter name is 1011 characters.



=head2 Overwrite => Bool

Overwrite an existing parameter. If not specified, will default to
"false".



=head2 B<REQUIRED> Type => Str

The type of parameter that you want to add to the system.

Items in a C<StringList> must be separated by a comma (,). You can't
use other punctuation or special character to escape items in the list.
If you have a parameter value that requires a comma, then use the
C<String> data type.

C<SecureString> is not currently supported for AWS CloudFormation
templates or in the China Regions.

Valid values are: C<"String">, C<"StringList">, C<"SecureString">

=head2 B<REQUIRED> Value => Str

The parameter value that you want to add to the system.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutParameter in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

