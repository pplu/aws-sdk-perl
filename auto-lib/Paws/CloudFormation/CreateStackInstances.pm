
package Paws::CloudFormation::CreateStackInstances;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has OperationId => (is => 'ro', isa => 'Str');
  has OperationPreferences => (is => 'ro', isa => 'Paws::CloudFormation::StackSetOperationPreferences');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStackInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateStackInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackInstancesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStackInstances - Arguments for method CreateStackInstances on Paws::CloudFormation

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStackInstances on the 
AWS CloudFormation service. Use the attributes of this class
as arguments to method CreateStackInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStackInstances.

As an example:

  $service_obj->CreateStackInstances(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

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



=head2 B<REQUIRED> Regions => ArrayRef[Str|Undef]

The names of one or more regions where you want to create stack
instances using the specified AWS account(s).



=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you want to create stack
instances from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStackInstances in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

