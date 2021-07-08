
package Paws::CloudFormation::DeleteStackInstances;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CallAs => (is => 'ro', isa => 'Str');
  has DeploymentTargets => (is => 'ro', isa => 'Paws::CloudFormation::DeploymentTargets');
  has OperationId => (is => 'ro', isa => 'Str');
  has OperationPreferences => (is => 'ro', isa => 'Paws::CloudFormation::StackSetOperationPreferences');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has RetainStacks => (is => 'ro', isa => 'Bool', required => 1);
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStackInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DeleteStackInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteStackInstancesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DeleteStackInstances - Arguments for method DeleteStackInstances on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteStackInstances on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DeleteStackInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteStackInstances.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DeleteStackInstancesOutput = $cloudformation->DeleteStackInstances(
      Regions           => [ 'MyRegion', ... ],
      RetainStacks      => 1,
      StackSetName      => 'MyStackSetName',
      Accounts          => [ 'MyAccount', ... ],    # OPTIONAL
      CallAs            => 'SELF',                  # OPTIONAL
      DeploymentTargets => {
        Accounts    => [ 'MyAccount', ... ],
        AccountsUrl => 'MyAccountsUrl',        # min: 1, max: 5120; OPTIONAL
        OrganizationalUnitIds => [ 'MyOrganizationalUnitId', ... ],   # OPTIONAL
      },    # OPTIONAL
      OperationId          => 'MyClientRequestToken',    # OPTIONAL
      OperationPreferences => {
        FailureToleranceCount      => 1,    # OPTIONAL
        FailureTolerancePercentage => 1,    # max: 100; OPTIONAL
        MaxConcurrentCount         => 1,    # min: 1; OPTIONAL
        MaxConcurrentPercentage    => 1,    # min: 1, max: 100; OPTIONAL
        RegionConcurrencyType      =>
          'SEQUENTIAL',    # values: SEQUENTIAL, PARALLEL; OPTIONAL
        RegionOrder => [ 'MyRegion', ... ],
      },    # OPTIONAL
    );

    # Results:
    my $OperationId = $DeleteStackInstancesOutput->OperationId;

    # Returns a L<Paws::CloudFormation::DeleteStackInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DeleteStackInstances>

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[Str|Undef]

[Self-managed permissions] The names of the AWS accounts that you want
to delete stack instances for.

You can specify C<Accounts> or C<DeploymentTargets>, but not both.



=head2 CallAs => Str

[Service-managed permissions] Specifies whether you are acting as an
account administrator in the organization's management account or as a
delegated administrator in a member account.

By default, C<SELF> is specified. Use C<SELF> for stack sets with
self-managed permissions.

=over

=item *

If you are signed in to the management account, specify C<SELF>.

=item *

If you are signed in to a delegated administrator account, specify
C<DELEGATED_ADMIN>.

Your AWS account must be registered as a delegated administrator in the
management account. For more information, see Register a delegated
administrator
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html)
in the I<AWS CloudFormation User Guide>.

=back


Valid values are: C<"SELF">, C<"DELEGATED_ADMIN">

=head2 DeploymentTargets => L<Paws::CloudFormation::DeploymentTargets>

[Service-managed permissions] The AWS Organizations accounts from which
to delete stack instances.

You can specify C<Accounts> or C<DeploymentTargets>, but not both.



=head2 OperationId => Str

The unique identifier for this stack set operation.

If you don't specify an operation ID, the SDK generates one
automatically.

The operation ID also functions as an idempotency token, to ensure that
AWS CloudFormation performs the stack set operation only once, even if
you retry the request multiple times. You can retry stack set operation
requests to ensure that AWS CloudFormation successfully received them.

Repeating this stack set operation with a new operation ID retries all
stack instances whose status is C<OUTDATED>.



=head2 OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>

Preferences for how AWS CloudFormation performs this stack set
operation.



=head2 B<REQUIRED> Regions => ArrayRef[Str|Undef]

The Regions where you want to delete stack set instances.



=head2 B<REQUIRED> RetainStacks => Bool

Removes the stack instances from the specified stack set, but doesn't
delete the stacks. You can't reassociate a retained stack or add an
existing, saved stack to a new stack set.

For more information, see Stack set operation options
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options).



=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you want to delete stack
instances for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteStackInstances in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

