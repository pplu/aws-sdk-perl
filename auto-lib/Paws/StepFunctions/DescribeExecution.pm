
package Paws::StepFunctions::DescribeExecution;
  use Moose;
  has ExecutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::DescribeExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeExecution - Arguments for method DescribeExecution on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExecution on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method DescribeExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExecution.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $DescribeExecutionOutput = $states->DescribeExecution(
      ExecutionArn => 'MyArn',

    );

    # Results:
    my $ExecutionArn    = $DescribeExecutionOutput->ExecutionArn;
    my $Input           = $DescribeExecutionOutput->Input;
    my $Name            = $DescribeExecutionOutput->Name;
    my $Output          = $DescribeExecutionOutput->Output;
    my $StartDate       = $DescribeExecutionOutput->StartDate;
    my $StateMachineArn = $DescribeExecutionOutput->StateMachineArn;
    my $Status          = $DescribeExecutionOutput->Status;
    my $StopDate        = $DescribeExecutionOutput->StopDate;

    # Returns a L<Paws::StepFunctions::DescribeExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/states/DescribeExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) of the execution to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExecution in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

