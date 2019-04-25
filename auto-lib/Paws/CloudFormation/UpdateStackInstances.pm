
package Paws::CloudFormation::UpdateStackInstances;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has OperationId => (is => 'ro', isa => 'Str');
  has OperationPreferences => (is => 'ro', isa => 'Paws::CloudFormation::StackSetOperationPreferences');
  has ParameterOverrides => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStackInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::UpdateStackInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackInstancesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::UpdateStackInstances - Arguments for method UpdateStackInstances on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStackInstances on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method UpdateStackInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStackInstances.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $UpdateStackInstancesOutput = $cloudformation->UpdateStackInstances(
      Accounts     => [ 'MyAccount', ... ],
      Regions      => [ 'MyRegion',  ... ],
      StackSetName => 'MyStackSetNameOrId',
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
    my $OperationId = $UpdateStackInstancesOutput->OperationId;

    # Returns a L<Paws::CloudFormation::UpdateStackInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/UpdateStackInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Accounts => ArrayRef[Str|Undef]

The names of one or more AWS accounts for which you want to update
parameter values for stack instances. The overridden parameter values
will be applied to all stack instances in the specified accounts and
regions.



=head2 OperationId => Str

The unique identifier for this stack set operation.

The operation ID also functions as an idempotency token, to ensure that
AWS CloudFormation performs the stack set operation only once, even if
you retry the request multiple times. You might retry stack set
operation requests to ensure that AWS CloudFormation successfully
received them.

If you don't specify an operation ID, the SDK generates one
automatically.



=head2 OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>

Preferences for how AWS CloudFormation performs this stack set
operation.



=head2 ParameterOverrides => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of input parameters whose values you want to update for the
specified stack instances.

Any overridden parameter values will be applied to all stack instances
in the specified accounts and regions. When specifying parameters and
their values, be aware of how AWS CloudFormation sets parameter values
during stack instance update operations:

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
stack set; to add or delete a parameter itself, use C<UpdateStackSet>
to update the stack set template. If you add a parameter to a template,
before you can override the parameter value specified in the stack set
you must first use UpdateStackSet
(http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html)
to update all stack instances with the updated template and parameter
value specified in the stack set. Once a stack instance has been
updated with the new parameter, you can then override the parameter
value using C<UpdateStackInstances>.



=head2 B<REQUIRED> Regions => ArrayRef[Str|Undef]

The names of one or more regions in which you want to update parameter
values for stack instances. The overridden parameter values will be
applied to all stack instances in the specified accounts and regions.



=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set associated with the stack
instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStackInstances in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

