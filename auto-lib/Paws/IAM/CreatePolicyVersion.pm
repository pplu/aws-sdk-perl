
package Paws::IAM::CreatePolicyVersion;
  use Moose;
  has PolicyArn => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has SetAsDefault => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePolicyVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreatePolicyVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePolicyVersionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreatePolicyVersion - Arguments for method CreatePolicyVersion on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePolicyVersion on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method CreatePolicyVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePolicyVersion.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $CreatePolicyVersionResponse = $iam->CreatePolicyVersion(
      PolicyArn      => 'MyarnType',
      PolicyDocument => 'MypolicyDocumentType',
      SetAsDefault   => 1,                        # OPTIONAL
    );

    # Results:
    my $PolicyVersion = $CreatePolicyVersionResponse->PolicyVersion;

    # Returns a L<Paws::IAM::CreatePolicyVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/CreatePolicyVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyArn => Str

The Amazon Resource Name (ARN) of the IAM policy to which you want to
add a new version.

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.



=head2 B<REQUIRED> PolicyDocument => Str

The JSON policy document that you want to use as the content for this
new version of the policy.

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




=head2 SetAsDefault => Bool

Specifies whether to set this version as the policy's default version.

When this parameter is C<true>, the new policy version becomes the
operative version. That is, it becomes the version that is in effect
for the IAM users, groups, and roles that the policy is attached to.

For more information about managed policy versions, see Versioning for
Managed Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
in the I<IAM User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePolicyVersion in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

