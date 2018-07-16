
package Paws::CloudFormation::CreateStackInstances;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has OperationId => (is => 'ro', isa => 'Str');
  has OperationPreferences => (is => 'ro', isa => 'Paws::CloudFormation::StackSetOperationPreferences');
  has ParameterOverrides => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStackInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateStackInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackInstancesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStackInstances - Arguments for method CreateStackInstances on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStackInstances on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method CreateStackInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStackInstances.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $CreateStackInstancesOutput = $cloudformation->CreateStackInstances(
      Accounts     => [ 'MyAccount', ... ],
      Regions      => [ 'MyRegion',  ... ],
      StackSetName => 'MyStackSetName',
      OperationId          => 'MyClientRequestToken',    # OPTIONAL
      OperationPreferences => {
        FailureToleranceCount      => 1,    # OPTIONAL
        FailureTolerancePercentage => 1,    # max: 100; OPTIONAL
        MaxConcurrentCount         => 1,    # min: 1; OPTIONAL
        MaxConcurrentPercentage    => 1,    # min: 1, max: 100; OPTIONAL
        RegionOrder => [ 'MyRegion', ... ],
      },    # OPTIONAL
      ParameterOverrides => [
        {
          ParameterKey     => 'MyParameterKey',      # OPTIONAL
          ParameterValue   => 'MyParameterValue',    # OPTIONAL
          ResolvedValue    => 'MyParameterValue',    # OPTIONAL
          UsePreviousValue => 1,                     # OPTIONAL
        },
        ...
      ],                                             # OPTIONAL
    );

    # Results:
    my $OperationId = $CreateStackInstancesOutput->OperationId;

    # Returns a L<Paws::CloudFormation::CreateStackInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/CreateStackInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Accounts => ArrayRef[Str|Undef]

The names of one or more AWS accounts that you want to create stack
instances in the specified region(s) for.



=head2 OperationId => Str

The unique identifier for this stack set operation.

The operation ID also functions as an idempotency token, to ensure that
AWS CloudFormation performs the stack set operation only once, even if
you retry the request multiple times. You might retry stack set
operation requests to ensure that AWS CloudFormation successfully
received them.

If you don't specify an operation ID, the SDK generates one
automatically.

Repeating this stack set operation with a new operation ID retries all
stack instances whose status is C<OUTDATED>.



=head2 OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>

Preferences for how AWS CloudFormation performs this stack set
operation.



=head2 ParameterOverrides => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of stack set parameters whose values you want to override in the
selected stack instances.

Any overridden parameter values will be applied to all stack instances
in the specified accounts and regions. When specifying parameters and
their values, be aware of how AWS CloudFormation sets parameter values
during stack instance operations:

=over

=item *

To override the current value for a parameter, include the parameter
and specify its value.

=item *

To leave a parameter set to its present value, you can do one of the
following:

=over

=item *

Do not include the parameter in the list.

=item *

Include the parameter and specify C<UsePreviousValue> as C<true>. (You
cannot specify both a value and set C<UsePreviousValue> to C<true>.)

=back

=item *

To set all overridden parameter back to the values specified in the
stack set, specify a parameter list but do not include any parameters.

=item *

To leave all parameters set to their present values, do not specify
this property at all.

=back

During stack set updates, any parameter values overridden for a stack
instance are not updated, but retain their overridden value.

You can only override the parameter I<values> that are specified in the
stack set; to add or delete a parameter itself, use UpdateStackSet
(http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html)
to update the stack set template.



=head2 B<REQUIRED> Regions => ArrayRef[Str|Undef]

The names of one or more regions where you want to create stack
instances using the specified AWS account(s).



=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you want to create stack
instances from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStackInstances in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

