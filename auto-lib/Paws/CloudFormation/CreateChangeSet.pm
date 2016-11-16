
package Paws::CloudFormation::CreateChangeSet;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ChangeSetName => (is => 'ro', isa => 'Str', required => 1);
  has ChangeSetType => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RoleARN => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has UsePreviousTemplate => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChangeSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateChangeSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateChangeSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateChangeSet - Arguments for method CreateChangeSet on Paws::CloudFormation

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChangeSet on the 
AWS CloudFormation service. Use the attributes of this class
as arguments to method CreateChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChangeSet.

As an example:

  $service_obj->CreateChangeSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

A list of values that you must specify before AWS CloudFormation can
update certain stacks. Some stack templates might include resources
that can affect permissions in your AWS account, for example, by
creating new AWS Identity and Access Management (IAM) users. For those
stacks, you must explicitly acknowledge their capabilities by
specifying this parameter.

The only valid values are C<CAPABILITY_IAM> and
C<CAPABILITY_NAMED_IAM>. The following resources require you to specify
this parameter: AWS::IAM::AccessKey, AWS::IAM::Group,
AWS::IAM::InstanceProfile, AWS::IAM::Policy, AWS::IAM::Role,
AWS::IAM::User, and AWS::IAM::UserToGroupAddition. If your stack
template contains these resources, we recommend that you review all
permissions associated with them and edit their permissions if
necessary.

If you have IAM resources, you can specify either capability. If you
have IAM resources with custom names, you must specify
C<CAPABILITY_NAMED_IAM>. If you don't specify this parameter, this
action returns an C<InsufficientCapabilities> error.

For more information, see Acknowledging IAM Resources in AWS
CloudFormation Templates.



=head2 B<REQUIRED> ChangeSetName => Str

The name of the change set. The name must be unique among all change
sets that are associated with the specified stack.

A change set name can contain only alphanumeric, case sensitive
characters and hyphens. It must start with an alphabetic character and
cannot exceed 128 characters.



=head2 ChangeSetType => Str

The type of change set operation.

Valid values are C<CREATE> and C<UPDATE>. The default value is
C<UPDATE>.

=over

=item *

C<CREATE> - Specify to use the change set to create a new stack. While
AWS CloudFormation creates the stack, the stack has the
C<REVIEW_IN_PROGRESS> status and an expected C<StackId>, but no
template or resources. Except for its C<StackId>, the stack is
completely empty until you execute the change set. You can apply
multiple change sets to a stack.

=item *

C<UPDATE> - Specify to create a change set for an existing stack.

=back


Valid values are: C<"CREATE">, C<"UPDATE">

=head2 ClientToken => Str

A unique identifier for this C<CreateChangeSet> request. Specify this
token if you plan to retry requests so that AWS CloudFormation knows
that you're not attempting to create another change set with the same
name. You might retry C<CreateChangeSet> requests to ensure that AWS
CloudFormation successfully received them.



=head2 Description => Str

A description to help you identify this change set.



=head2 NotificationARNs => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of Amazon Simple Notification Service
(Amazon SNS) topics that AWS CloudFormation associates with the stack.
To remove all associated notification topics, specify an empty list.



=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of C<Parameter> structures that specify input parameters for the
change set. For more information, see the Parameter data type.



=head2 ResourceTypes => ArrayRef[Str|Undef]

The template resource types that you have permissions to work with if
you execute this change set, such as C<AWS::EC2::Instance>,
C<AWS::EC2::*>, or C<Custom::MyCustomInstance>.

If the list of resource types doesn't include a resource type that
you're updating, the stack update fails. By default, AWS CloudFormation
grants permissions to all resource types. AWS Identity and Access
Management (IAM) uses this parameter for condition keys in IAM policies
for AWS CloudFormation. For more information, see Controlling Access
with AWS Identity and Access Management in the AWS CloudFormation User
Guide.



=head2 RoleARN => Str

The Amazon Resource Name (ARN) of an AWS Identity and Access Management
(IAM) role that AWS CloudFormation assumes when executing the change
set. AWS CloudFormation uses the role's credentials to make calls on
your behalf. AWS CloudFormation uses this role for all future
operations on the stack. As long as users have permission to operate on
the stack, AWS CloudFormation uses this role even if the users don't
have permission to pass it. Ensure that the role grants least
privilege.

If you don't specify a value, AWS CloudFormation uses the role that was
previously associated with the stack. If no role is available, AWS
CloudFormation uses a temporary session that is generated from your
user credentials.



=head2 B<REQUIRED> StackName => Str

The name or the unique ID of the stack for which you are creating a
change set. AWS CloudFormation generates the change set by comparing
this stack's information with the information that you submit, such as
a modified template or different parameter input values.



=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

Key-value pairs to associate with this stack. AWS CloudFormation also
propagates these tags to resources in the stack. You can specify a
maximum of 10 tags.



=head2 TemplateBody => Str

A structure that contains the body of the revised template, with a
minimum length of 1 byte and a maximum length of 51,200 bytes. AWS
CloudFormation generates the change set by comparing this template with
the template of the stack that you specified.

Conditional: You must specify only C<TemplateBody> or C<TemplateURL>.



=head2 TemplateURL => Str

The location of the file that contains the revised template. The URL
must point to a template (max size: 460,800 bytes) that is located in
an S3 bucket. AWS CloudFormation generates the change set by comparing
this template with the stack that you specified.

Conditional: You must specify only C<TemplateBody> or C<TemplateURL>.



=head2 UsePreviousTemplate => Bool

Whether to reuse the template that is associated with the stack to
create the change set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChangeSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

