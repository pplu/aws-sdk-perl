
package Paws::IAM::GetContextKeysForPrincipalPolicy;
  use Moose;
  has PolicyInputList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PolicySourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContextKeysForPrincipalPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetContextKeysForPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetContextKeysForPrincipalPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetContextKeysForPrincipalPolicy - Arguments for method GetContextKeysForPrincipalPolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContextKeysForPrincipalPolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetContextKeysForPrincipalPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContextKeysForPrincipalPolicy.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $GetContextKeysForPolicyResponse =
      $iam->GetContextKeysForPrincipalPolicy(
      PolicySourceArn => 'MyarnType',
      PolicyInputList => [
        'MypolicyDocumentType', ...    # min: 1, max: 131072
      ],                               # OPTIONAL
      );

    # Results:
    my $ContextKeyNames = $GetContextKeysForPolicyResponse->ContextKeyNames;

    # Returns a L<Paws::IAM::GetContextKeysForPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetContextKeysForPrincipalPolicy>

=head1 ATTRIBUTES


=head2 PolicyInputList => ArrayRef[Str|Undef]

An optional list of additional policies for which you want the list of
context keys that are referenced.

The regex pattern (http://wikipedia.org/wiki/regex) used to validate
this parameter is a string of characters consisting of the following:

=over

=item *

Any printable ASCII character ranging from the space character (\u0020)
through the end of the ASCII character range

=item *

The printable characters in the Basic Latin and Latin-1 Supplement
character set (through \u00FF)

=item *

The special characters tab (\u0009), line feed (\u000A), and carriage
return (\u000D)

=back




=head2 B<REQUIRED> PolicySourceArn => Str

The ARN of a user, group, or role whose policies contain the context
keys that you want listed. If you specify a user, the list includes
context keys that are found in all policies that are attached to the
user. The list also includes all groups that the user is a member of.
If you pick a group or a role, then it includes only those context keys
that are found in policies attached to that entity. Note that all
parameters are shown in unencoded form here for clarity, but must be
URL encoded to be included as a part of a real HTML request.

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContextKeysForPrincipalPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

