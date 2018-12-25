
package Paws::CloudFormation::UpdateStackSet;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AdministrationRoleARN => (is => 'ro', isa => 'Str');
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionRoleName => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str');
  has OperationPreferences => (is => 'ro', isa => 'Paws::CloudFormation::StackSetOperationPreferences');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has UsePreviousTemplate => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStackSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::UpdateStackSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::UpdateStackSet - Arguments for method UpdateStackSet on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStackSet on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method UpdateStackSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStackSet.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $UpdateStackSetOutput = $cloudformation->UpdateStackSet(
      StackSetName          => 'MyStackSetName',
      Accounts              => [ 'MyAccount', ... ],    # OPTIONAL
      AdministrationRoleARN => 'MyRoleARN',             # OPTIONAL
      Capabilities          => [
        'CAPABILITY_IAM',
        ... # values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
      ],    # OPTIONAL
      Description          => 'MyDescription',           # OPTIONAL
      ExecutionRoleName    => 'MyExecutionRoleName',     # OPTIONAL
      OperationId          => 'MyClientRequestToken',    # OPTIONAL
      OperationPreferences => {
        FailureToleranceCount      => 1,    # OPTIONAL
        FailureTolerancePercentage => 1,    # max: 100; OPTIONAL
        MaxConcurrentCount         => 1,    # min: 1; OPTIONAL
        MaxConcurrentPercentage    => 1,    # min: 1, max: 100; OPTIONAL
        RegionOrder => [ 'MyRegion', ... ], # OPTIONAL
      },    # OPTIONAL
      Parameters => [
        {
          ParameterKey     => 'MyParameterKey',      # OPTIONAL
          ParameterValue   => 'MyParameterValue',    # OPTIONAL
          ResolvedValue    => 'MyParameterValue',    # OPTIONAL
          UsePreviousValue => 1,                     # OPTIONAL
        },
        ...
      ],                                             # OPTIONAL
      Regions => [ 'MyRegion', ... ],                # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',                       # min: 1, max: 128
          Value => 'MyTagValue',                     # min: 1, max: 256

        },
        ...
      ],                                             # OPTIONAL
      TemplateBody        => 'MyTemplateBody',       # OPTIONAL
      TemplateURL         => 'MyTemplateURL',        # OPTIONAL
      UsePreviousTemplate => 1,                      # OPTIONAL
    );

    # Results:
    my $OperationId = $UpdateStackSetOutput->OperationId;

    # Returns a L<Paws::CloudFormation::UpdateStackSetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/UpdateStackSet>

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[Str|Undef]

The accounts in which to update associated stack instances. If you
specify accounts, you must also specify the regions in which to update
stack set instances.

To update I<all> the stack instances associated with this stack set, do
not specify the C<Accounts> or C<Regions> properties.

If the stack set update includes changes to the template (that is, if
the C<TemplateBody> or C<TemplateURL> properties are specified), or the
C<Parameters> property, AWS CloudFormation marks all stack instances
with a status of C<OUTDATED> prior to updating the stack instances in
the specified accounts and regions. If the stack set update does not
include changes to the template or parameters, AWS CloudFormation
updates the stack instances in the specified accounts and regions,
while leaving all other stack instances with their existing stack
instance status.



=head2 AdministrationRoleARN => Str

The Amazon Resource Number (ARN) of the IAM role to use to update this
stack set.

Specify an IAM role only if you are using customized administrator
roles to control which users or groups can manage specific stack sets
within the same administrator account. For more information, see Define
Permissions for Multiple Administrators
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html)
in the I<AWS CloudFormation User Guide>.

If you specify a customized administrator role, AWS CloudFormation uses
that role to update the stack. If you do not specify a customized
administrator role, AWS CloudFormation performs the update using the
role previously associated with the stack set, so long as you have
permissions to perform operations on the stack set.



=head2 Capabilities => ArrayRef[Str|Undef]

In some cases, you must explicity acknowledge that your stack template
contains certain capabilities in order for AWS CloudFormation to update
the stack set and its associated stack instances.

=over

=item *

C<CAPABILITY_IAM> and C<CAPABILITY_NAMED_IAM>

Some stack templates might include resources that can affect
permissions in your AWS account; for example, by creating new AWS
Identity and Access Management (IAM) users. For those stacks sets, you
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
more macros, and you choose to update a stack directly from the
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




=head2 Description => Str

A brief description of updates that you are making.



=head2 ExecutionRoleName => Str

The name of the IAM execution role to use to update the stack set. If
you do not specify an execution role, AWS CloudFormation uses the
C<AWSCloudFormationStackSetExecutionRole> role for the stack set
operation.

Specify an IAM role only if you are using customized execution roles to
control which stack resources users and groups can include in their
stack sets.

If you specify a customized execution role, AWS CloudFormation uses
that role to update the stack. If you do not specify a customized
execution role, AWS CloudFormation performs the update using the role
previously associated with the stack set, so long as you have
permissions to perform operations on the stack set.



=head2 OperationId => Str

The unique ID for this stack set operation.

The operation ID also functions as an idempotency token, to ensure that
AWS CloudFormation performs the stack set operation only once, even if
you retry the request multiple times. You might retry stack set
operation requests to ensure that AWS CloudFormation successfully
received them.

If you don't specify an operation ID, AWS CloudFormation generates one
automatically.

Repeating this stack set operation with a new operation ID retries all
stack instances whose status is C<OUTDATED>.



=head2 OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>

Preferences for how AWS CloudFormation performs this stack set
operation.



=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of input parameters for the stack set template.



=head2 Regions => ArrayRef[Str|Undef]

The regions in which to update associated stack instances. If you
specify regions, you must also specify accounts in which to update
stack set instances.

To update I<all> the stack instances associated with this stack set, do
not specify the C<Accounts> or C<Regions> properties.

If the stack set update includes changes to the template (that is, if
the C<TemplateBody> or C<TemplateURL> properties are specified), or the
C<Parameters> property, AWS CloudFormation marks all stack instances
with a status of C<OUTDATED> prior to updating the stack instances in
the specified accounts and regions. If the stack set update does not
include changes to the template or parameters, AWS CloudFormation
updates the stack instances in the specified accounts and regions,
while leaving all other stack instances with their existing stack
instance status.



=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you want to update.



=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

The key-value pairs to associate with this stack set and the stacks
created from it. AWS CloudFormation also propagates these tags to
supported resources that are created in the stacks. You can specify a
maximum number of 50 tags.

If you specify tags for this parameter, those tags replace any list of
tags that are currently associated with this stack set. This means:

=over

=item *

If you don't specify this parameter, AWS CloudFormation doesn't modify
the stack's tags.

=item *

If you specify I<any> tags using this parameter, you must specify
I<all> the tags that you want associated with this stack set, even tags
you've specifed before (for example, when creating the stack set or
during a previous update of the stack set.). Any tags that you don't
include in the updated list of tags are removed from the stack set, and
therefore from the stacks and resources as well.

=item *

If you specify an empty value, AWS CloudFormation removes all currently
associated tags.

=back

If you specify new tags as part of an C<UpdateStackSet> action, AWS
CloudFormation checks to see if you have the required IAM permission to
tag resources. If you omit tags that are currently associated with the
stack set from the list of tags you specify, AWS CloudFormation assumes
that you want to remove those tags from the stack set, and checks to
see if you have permission to untag resources. If you don't have the
necessary permission(s), the entire C<UpdateStackSet> action fails with
an C<access denied> error, and the stack set is not updated.



=head2 TemplateBody => Str

The structure that contains the template body, with a minimum length of
1 byte and a maximum length of 51,200 bytes. For more information, see
Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.

Conditional: You must specify only one of the following parameters:
C<TemplateBody> or C<TemplateURL>E<mdash>or set C<UsePreviousTemplate>
to true.



=head2 TemplateURL => Str

The location of the file that contains the template body. The URL must
point to a template (maximum size: 460,800 bytes) that is located in an
Amazon S3 bucket. For more information, see Template Anatomy
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html)
in the AWS CloudFormation User Guide.

Conditional: You must specify only one of the following parameters:
C<TemplateBody> or C<TemplateURL>E<mdash>or set C<UsePreviousTemplate>
to true.



=head2 UsePreviousTemplate => Bool

Use the existing template that's associated with the stack set that
you're updating.

Conditional: You must specify only one of the following parameters:
C<TemplateBody> or C<TemplateURL>E<mdash>or set C<UsePreviousTemplate>
to true.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStackSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

