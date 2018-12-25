
package Paws::CloudFormation::UpdateStack;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RoleARN => (is => 'ro', isa => 'Str');
  has RollbackConfiguration => (is => 'ro', isa => 'Paws::CloudFormation::RollbackConfiguration');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyDuringUpdateBody => (is => 'ro', isa => 'Str');
  has StackPolicyDuringUpdateURL => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has UsePreviousTemplate => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::UpdateStackOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::UpdateStack - Arguments for method UpdateStack on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStack on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method UpdateStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStack.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    # To update an AWS CloudFormation stack
    # This example updates the template and input parameters for the specified
    # stack.
    my $UpdateStackOutput = $cloudformation->UpdateStack(
      {
        'NotificationARNs' => [

        ],
        'Parameters' => [

          {
            'ParameterKey'   => 'KeyPairName',
            'ParameterValue' => 'ExampleKeyPair'
          },

          {
            'ParameterKey'   => 'SubnetIDs',
            'ParameterValue' => 'ExampleSubnetID1, ExampleSubnetID2'
          }
        ],
        'ResourceTypes' => [

        ],
        'StackName' => 'MyStack',
        'Tags'      => [

        ],
        'TemplateURL' => 'https://s3.amazonaws.com/example/updated.template'
      }
    );

    # Results:
    my $StackId = $UpdateStackOutput->StackId;

   # Returns a L<Paws::CloudFormation::UpdateStackOutput> object.
   # To update an AWS CloudFormation stack
   # This example updates only the the specified parameter value for the
   # specified stack. If you don't specify a parameter value, AWS CloudFormation
   # uses the default value from the template.
    my $UpdateStackOutput = $cloudformation->UpdateStack(
      {
        'NotificationARNs' => [

        ],
        'Parameters' => [

          {
            'ParameterKey'     => 'KeyPairName',
            'UsePreviousValue' => 1
          },

          {
            'ParameterKey'   => 'SubnetIDs',
            'ParameterValue' => 'SampleSubnetID1, UpdatedSampleSubnetID2'
          }
        ],
        'ResourceTypes' => [

        ],
        'StackName' => 'MyStack',
        'Tags'      => [

        ],
        'TemplateURL' => 'https://s3.amazonaws.com/example/updated.template'
      }
    );

    # Results:
    my $StackId = $UpdateStackOutput->StackId;

    # Returns a L<Paws::CloudFormation::UpdateStackOutput> object.
    # To update an AWS CloudFormation stack
    # This example adds two stack notification topics to the specified stack.
    my $UpdateStackOutput = $cloudformation->UpdateStack(
      {
        'Capabilities' => [

        ],
        'NotificationARNs' => [
          'arn:aws:sns:use-east-1:123456789012:mytopic1',
          'arn:aws:sns:us-east-1:123456789012:mytopic2'
        ],
        'Parameters' => [

        ],
        'ResourceTypes' => [

        ],
        'StackName' => 'MyStack',
        'Tags'      => [

        ],
        'TemplateURL' => 'https://s3.amazonaws.com/example/updated.template',
        'UsePreviousTemplate' => 1
      }
    );

    # Results:
    my $StackId = $UpdateStackOutput->StackId;

    # Returns a L<Paws::CloudFormation::UpdateStackOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/UpdateStack>

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

In some cases, you must explicity acknowledge that your stack template
contains certain capabilities in order for AWS CloudFormation to update
the stack.

=over

=item *

C<CAPABILITY_IAM> and C<CAPABILITY_NAMED_IAM>

Some stack templates might include resources that can affect
permissions in your AWS account; for example, by creating new AWS
Identity and Access Management (IAM) users. For those stacks, you must
explicitly acknowledge this by specifying one of these capabilities.

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

Some template contain macros. Macros perform custom processing on
templates; this can include simple actions like find-and-replace
operations, all the way to extensive transformations of entire
templates. Because of this, users typically create a change set from
the processed template, so that they can review the changes resulting
from the macros before actually updating the stack. If your stack
template contains one or more macros, and you choose to update a stack
directly from the processed template, without first reviewing the
resulting changes in a change set, you must acknowledge this
capability. This includes the AWS::Include
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html)
and AWS::Serverless
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html)
transforms, which are macros hosted by AWS CloudFormation.

Change sets do not currently support nested stacks. If you want to
update a stack from a stack template that contains macros I<and> nested
stacks, you must update the stack directly from the template using this
capability.

You should only update stacks directly from a stack template that
contains macros if you know what processing the macro performs.

Each macro relies on an underlying Lambda service function for
processing stack templates. Be aware that the Lambda function owner can
update the function operation without AWS CloudFormation being
notified.

For more information, see Using AWS CloudFormation Macros to Perform
Custom Processing on Templates
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html).

=back




=head2 ClientRequestToken => Str

A unique identifier for this C<UpdateStack> request. Specify this token
if you plan to retry requests so that AWS CloudFormation knows that
you're not attempting to update a stack with the same name. You might
retry C<UpdateStack> requests to ensure that AWS CloudFormation
successfully received them.

All events triggered by a given stack operation are assigned the same
client request token, which you can use to track operations. For
example, if you execute a C<CreateStack> operation with the token
C<token1>, then all the C<StackEvents> generated by that operation will
have C<ClientRequestToken> set as C<token1>.

In the console, stack operations display the client request token on
the Events tab. Stack operations that are initiated from the console
use the token format I<Console-StackOperation-ID>, which helps you
easily identify the stack operation . For example, if you create a
stack using the console, each stack event would be assigned the same
token in the following format:
C<Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002>.



=head2 NotificationARNs => ArrayRef[Str|Undef]

Amazon Simple Notification Service topic Amazon Resource Names (ARNs)
that AWS CloudFormation associates with the stack. Specify an empty
list to remove all notification topics.



=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of C<Parameter> structures that specify input parameters for the
stack. For more information, see the Parameter
(http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html)
data type.



=head2 ResourceTypes => ArrayRef[Str|Undef]

The template resource types that you have permissions to work with for
this update stack action, such as C<AWS::EC2::Instance>,
C<AWS::EC2::*>, or C<Custom::MyCustomInstance>.

If the list of resource types doesn't include a resource that you're
updating, the stack update fails. By default, AWS CloudFormation grants
permissions to all resource types. AWS Identity and Access Management
(IAM) uses this parameter for AWS CloudFormation-specific condition
keys in IAM policies. For more information, see Controlling Access with
AWS Identity and Access Management
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html).



=head2 RoleARN => Str

The Amazon Resource Name (ARN) of an AWS Identity and Access Management
(IAM) role that AWS CloudFormation assumes to update the stack. AWS
CloudFormation uses the role's credentials to make calls on your
behalf. AWS CloudFormation always uses this role for all future
operations on the stack. As long as users have permission to operate on
the stack, AWS CloudFormation uses this role even if the users don't
have permission to pass it. Ensure that the role grants least
privilege.

If you don't specify a value, AWS CloudFormation uses the role that was
previously associated with the stack. If no role is available, AWS
CloudFormation uses a temporary session that is generated from your
user credentials.



=head2 RollbackConfiguration => L<Paws::CloudFormation::RollbackConfiguration>

The rollback triggers for AWS CloudFormation to monitor during stack
creation and updating operations, and for the specified monitoring
period afterwards.



=head2 B<REQUIRED> StackName => Str

The name or unique stack ID of the stack to update.



=head2 StackPolicyBody => Str

Structure containing a new stack policy body. You can specify either
the C<StackPolicyBody> or the C<StackPolicyURL> parameter, but not
both.

You might update the stack policy, for example, in order to protect a
new resource that you created during a stack update. If you do not
specify a stack policy, the current policy that is associated with the
stack is unchanged.



=head2 StackPolicyDuringUpdateBody => Str

Structure containing the temporary overriding stack policy body. You
can specify either the C<StackPolicyDuringUpdateBody> or the
C<StackPolicyDuringUpdateURL> parameter, but not both.

If you want to update protected resources, specify a temporary
overriding stack policy during this update. If you do not specify a
stack policy, the current policy that is associated with the stack will
be used.



=head2 StackPolicyDuringUpdateURL => Str

Location of a file containing the temporary overriding stack policy.
The URL must point to a policy (max size: 16KB) located in an S3 bucket
in the same region as the stack. You can specify either the
C<StackPolicyDuringUpdateBody> or the C<StackPolicyDuringUpdateURL>
parameter, but not both.

If you want to update protected resources, specify a temporary
overriding stack policy during this update. If you do not specify a
stack policy, the current policy that is associated with the stack will
be used.



=head2 StackPolicyURL => Str

Location of a file containing the updated stack policy. The URL must
point to a policy (max size: 16KB) located in an S3 bucket in the same
region as the stack. You can specify either the C<StackPolicyBody> or
the C<StackPolicyURL> parameter, but not both.

You might update the stack policy, for example, in order to protect a
new resource that you created during a stack update. If you do not
specify a stack policy, the current policy that is associated with the
stack is unchanged.



=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

Key-value pairs to associate with this stack. AWS CloudFormation also
propagates these tags to supported resources in the stack. You can
specify a maximum number of 50 tags.

If you don't specify this parameter, AWS CloudFormation doesn't modify
the stack's tags. If you specify an empty value, AWS CloudFormation
removes all associated tags.



=head2 TemplateBody => Str

Structure containing the template body with a minimum length of 1 byte
and a maximum length of 51,200 bytes. (For more information, go to
Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.)

Conditional: You must specify only one of the following parameters:
C<TemplateBody>, C<TemplateURL>, or set the C<UsePreviousTemplate> to
C<true>.



=head2 TemplateURL => Str

Location of file containing the template body. The URL must point to a
template that is located in an Amazon S3 bucket. For more information,
go to Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.

Conditional: You must specify only one of the following parameters:
C<TemplateBody>, C<TemplateURL>, or set the C<UsePreviousTemplate> to
C<true>.



=head2 UsePreviousTemplate => Bool

Reuse the existing template that is associated with the stack that you
are updating.

Conditional: You must specify only one of the following parameters:
C<TemplateBody>, C<TemplateURL>, or set the C<UsePreviousTemplate> to
C<true>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStack in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

