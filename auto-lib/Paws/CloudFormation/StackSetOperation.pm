package Paws::CloudFormation::StackSetOperation;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has AdministrationRoleARN => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has EndTimestamp => (is => 'ro', isa => 'Str');
  has ExecutionRoleName => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str');
  has OperationPreferences => (is => 'ro', isa => 'Paws::CloudFormation::StackSetOperationPreferences');
  has RetainStacks => (is => 'ro', isa => 'Bool');
  has StackSetId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackSetOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackSetOperation object:

  $service_obj->Method(Att1 => { Action => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackSetOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

The structure that contains information about a stack set operation.

=head1 ATTRIBUTES


=head2 Action => Str

  The type of stack set operation: C<CREATE>, C<UPDATE>, or C<DELETE>.
Create and delete operations affect only the specified stack set
instances that are associated with the specified stack set. Update
operations affect both the stack set itself, as well as I<all>
associated stack set instances.


=head2 AdministrationRoleARN => Str

  The Amazon Resource Number (ARN) of the IAM role used to perform this
stack set operation.

Use customized administrator roles to control which users or groups can
manage specific stack sets within the same administrator account. For
more information, see Define Permissions for Multiple Administrators
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html)
in the I<AWS CloudFormation User Guide>.


=head2 CreationTimestamp => Str

  The time at which the operation was initiated. Note that the creation
times for the stack set operation might differ from the creation time
of the individual stacks themselves. This is because AWS CloudFormation
needs to perform preparatory work for the operation, such as
dispatching the work to the requested regions, before actually creating
the first stacks.


=head2 EndTimestamp => Str

  The time at which the stack set operation ended, across all accounts
and regions specified. Note that this doesn't necessarily mean that the
stack set operation was successful, or even attempted, in each account
or region.


=head2 ExecutionRoleName => Str

  The name of the IAM execution role used to create or update the stack
set.

Use customized execution roles to control which stack resources users
and groups can include in their stack sets.


=head2 OperationId => Str

  The unique ID of a stack set operation.


=head2 OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>

  The preferences for how AWS CloudFormation performs this stack set
operation.


=head2 RetainStacks => Bool

  For stack set operations of action type C<DELETE>, specifies whether to
remove the stack instances from the specified stack set, but doesn't
delete the stacks. You can't reassociate a retained stack, or add an
existing, saved stack to a new stack set.


=head2 StackSetId => Str

  The ID of the stack set.


=head2 Status => Str

  The status of the operation.

=over

=item *

C<FAILED>: The operation exceeded the specified failure tolerance. The
failure tolerance value that you've set for an operation is applied for
each region during stack create and update operations. If the number of
failed stacks within a region exceeds the failure tolerance, the status
of the operation in the region is set to C<FAILED>. This in turn sets
the status of the operation as a whole to C<FAILED>, and AWS
CloudFormation cancels the operation in any remaining regions.

=item *

C<RUNNING>: The operation is currently being performed.

=item *

C<STOPPED>: The user has cancelled the operation.

=item *

C<STOPPING>: The operation is in the process of stopping, at user
request.

=item *

C<SUCCEEDED>: The operation completed creating or updating all the
specified stacks without exceeding the failure tolerance for the
operation.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

