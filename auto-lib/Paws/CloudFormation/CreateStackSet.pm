
package Paws::CloudFormation::CreateStackSet;
  use Moose;
  has AdministrationRoleARN => (is => 'ro', isa => 'Str');
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionRoleName => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStackSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateStackSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStackSet - Arguments for method CreateStackSet on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStackSet on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method CreateStackSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStackSet.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $CreateStackSetOutput = $cloudformation->CreateStackSet(
      StackSetName          => 'MyStackSetName',
      AdministrationRoleARN => 'MyRoleARN',        # OPTIONAL
      Capabilities          => [
        'CAPABILITY_IAM',
        ... # values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
      ],    # OPTIONAL
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Description        => 'MyDescription',           # OPTIONAL
      ExecutionRoleName  => 'MyExecutionRoleName',     # OPTIONAL
      Parameters         => [
        {
          ParameterKey     => 'MyParameterKey',        # OPTIONAL
          ParameterValue   => 'MyParameterValue',      # OPTIONAL
          ResolvedValue    => 'MyParameterValue',      # OPTIONAL
          UsePreviousValue => 1,                       # OPTIONAL
        },
        ...
      ],                                               # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',                         # min: 1, max: 128
          Value => 'MyTagValue',                       # min: 1, max: 256

        },
        ...
      ],                                               # OPTIONAL
      TemplateBody => 'MyTemplateBody',                # OPTIONAL
      TemplateURL  => 'MyTemplateURL',                 # OPTIONAL
    );

    # Results:
    my $StackSetId = $CreateStackSetOutput->StackSetId;

    # Returns a L<Paws::CloudFormation::CreateStackSetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/CreateStackSet>

=head1 ATTRIBUTES


=head2 AdministrationRoleARN => Str

The Amazon Resource Number (ARN) of the IAM role to use to create this
stack set.

Specify an IAM role only if you are using customized administrator
roles to control which users or groups can manage specific stack sets
within the same administrator account. For more information, see
Prerequisites: Granting Permissions for Stack Set Operations
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html)
in the I<AWS CloudFormation User Guide>.



=head2 Capabilities => ArrayRef[Str|Undef]

In some cases, you must explicity acknowledge that your stack set
template contains certain capabilities in order for AWS CloudFormation
to create the stack set and related stack instances.

=over

=item *

C<CAPABILITY_IAM> and C<CAPABILITY_NAMED_IAM>

Some stack templates might include resources that can affect
permissions in your AWS account; for example, by creating new AWS
Identity and Access Management (IAM) users. For those stack sets, you
must explicitly acknowledge this by specifying one of these
capabilities.

The following IAM resources require you to specify either the
C<CAPABILITY_IAM> or C<CAPABILITY_NAMED_IAM> capability.

=over

=item *

If you have IAM resources, you can specify either capability.

=item *

If you have IAM resources with custom names, you I<must> specify
C<CAPABILITY_NAMED_IAM>.

=item *

If you don't specify either of these capabilities, AWS CloudFormation
returns an C<InsufficientCapabilities> error.

=back

If your stack template contains these resources, we recommend that you
review all permissions associated with them and edit their permissions
if necessary.

=over

=item *

AWS::IAM::AccessKey
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html)

=item *

AWS::IAM::Group
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html)

=item *

AWS::IAM::InstanceProfile
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html)

=item *

AWS::IAM::Policy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html)

=item *

AWS::IAM::Role
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html)

=item *

AWS::IAM::User
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html)

=item *

AWS::IAM::UserToGroupAddition
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html)

=back

For more information, see Acknowledging IAM Resources in AWS
CloudFormation Templates
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).

=item *

C<CAPABILITY_AUTO_EXPAND>

Some templates contain macros. If your stack template contains one or
more macros, and you choose to create a stack directly from the
processed template, without first reviewing the resulting changes in a
change set, you must acknowledge this capability. For more information,
see Using AWS CloudFormation Macros to Perform Custom Processing on
Templates
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html).

Stack sets do not currently support macros in stack templates. (This
includes the AWS::Include
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html)
and AWS::Serverless
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html)
transforms, which are macros hosted by AWS CloudFormation.) Even if you
specify this capability, if you include a macro in your template the
stack set operation will fail.

=back




=head2 ClientRequestToken => Str

A unique identifier for this C<CreateStackSet> request. Specify this
token if you plan to retry requests so that AWS CloudFormation knows
that you're not attempting to create another stack set with the same
name. You might retry C<CreateStackSet> requests to ensure that AWS
CloudFormation successfully received them.

If you don't specify an operation ID, the SDK generates one
automatically.



=head2 Description => Str

A description of the stack set. You can use the description to identify
the stack set's purpose or other important information.



=head2 ExecutionRoleName => Str

The name of the IAM execution role to use to create the stack set. If
you do not specify an execution role, AWS CloudFormation uses the
C<AWSCloudFormationStackSetExecutionRole> role for the stack set
operation.

Specify an IAM role only if you are using customized execution roles to
control which stack resources users and groups can include in their
stack sets.



=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

The input parameters for the stack set template.



=head2 B<REQUIRED> StackSetName => Str

The name to associate with the stack set. The name must be unique in
the region where you create your stack set.

A stack name can contain only alphanumeric characters (case-sensitive)
and hyphens. It must start with an alphabetic character and can't be
longer than 128 characters.



=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

The key-value pairs to associate with this stack set and the stacks
created from it. AWS CloudFormation also propagates these tags to
supported resources that are created in the stacks. A maximum number of
50 tags can be specified.

If you specify tags as part of a C<CreateStackSet> action, AWS
CloudFormation checks to see if you have the required IAM permission to
tag resources. If you don't, the entire C<CreateStackSet> action fails
with an C<access denied> error, and the stack set is not created.



=head2 TemplateBody => Str

The structure that contains the template body, with a minimum length of
1 byte and a maximum length of 51,200 bytes. For more information, see
Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.

Conditional: You must specify either the TemplateBody or the
TemplateURL parameter, but not both.



=head2 TemplateURL => Str

The location of the file that contains the template body. The URL must
point to a template (maximum size: 460,800 bytes) that's located in an
Amazon S3 bucket. For more information, see Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.

Conditional: You must specify either the TemplateBody or the
TemplateURL parameter, but not both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStackSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

