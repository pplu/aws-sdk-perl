
package Paws::SimpleWorkflow::DescribeWorkflowExecution;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' , required => 1);
  has Execution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', traits => ['NameInRequest'], request_name => 'execution' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::WorkflowExecutionDetail');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DescribeWorkflowExecution - Arguments for method DescribeWorkflowExecution on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkflowExecution on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method DescribeWorkflowExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkflowExecution.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $WorkflowExecutionDetail = $swf->DescribeWorkflowExecution(
      Domain    => 'MyDomainName',
      Execution => {
        RunId      => 'MyWorkflowRunId',    # min: 1, max: 64
        WorkflowId => 'MyWorkflowId',       # min: 1, max: 256

      },

    );

    # Results:
    my $ExecutionConfiguration =
      $WorkflowExecutionDetail->ExecutionConfiguration;
    my $ExecutionInfo = $WorkflowExecutionDetail->ExecutionInfo;
    my $LatestActivityTaskTimestamp =
      $WorkflowExecutionDetail->LatestActivityTaskTimestamp;
    my $LatestExecutionContext =
      $WorkflowExecutionDetail->LatestExecutionContext;
    my $OpenCounts = $WorkflowExecutionDetail->OpenCounts;

    # Returns a L<Paws::SimpleWorkflow::WorkflowExecutionDetail> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/DescribeWorkflowExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain containing the workflow execution.



=head2 B<REQUIRED> Execution => L<Paws::SimpleWorkflow::WorkflowExecution>

The workflow execution to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkflowExecution in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

