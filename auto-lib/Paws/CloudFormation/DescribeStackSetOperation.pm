
package Paws::CloudFormation::DescribeStackSetOperation;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str', required => 1);
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackSetOperation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeStackSetOperationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackSetOperationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackSetOperation - Arguments for method DescribeStackSetOperation on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStackSetOperation on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeStackSetOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStackSetOperation.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeStackSetOperationOutput =
      $cloudformation->DescribeStackSetOperation(
      OperationId  => 'MyClientRequestToken',
      StackSetName => 'MyStackSetName',

      );

    # Results:
    my $StackSetOperation = $DescribeStackSetOperationOutput->StackSetOperation;

    # Returns a L<Paws::CloudFormation::DescribeStackSetOperationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeStackSetOperation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationId => Str

The unique ID of the stack set operation.



=head2 B<REQUIRED> StackSetName => Str

The name or the unique stack ID of the stack set for the stack
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStackSetOperation in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

