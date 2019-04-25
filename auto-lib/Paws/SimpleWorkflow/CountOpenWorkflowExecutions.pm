
package Paws::SimpleWorkflow::CountOpenWorkflowExecutions;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' , required => 1);
  has ExecutionFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionFilter', traits => ['NameInRequest'], request_name => 'executionFilter' );
  has StartTimeFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::ExecutionTimeFilter', traits => ['NameInRequest'], request_name => 'startTimeFilter' , required => 1);
  has TagFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::TagFilter', traits => ['NameInRequest'], request_name => 'tagFilter' );
  has TypeFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowTypeFilter', traits => ['NameInRequest'], request_name => 'typeFilter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CountOpenWorkflowExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::WorkflowExecutionCount');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::CountOpenWorkflowExecutions - Arguments for method CountOpenWorkflowExecutions on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CountOpenWorkflowExecutions on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method CountOpenWorkflowExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CountOpenWorkflowExecutions.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $WorkflowExecutionCount = $swf->CountOpenWorkflowExecutions(
      Domain          => 'MyDomainName',
      StartTimeFilter => {
        OldestDate => '1970-01-01T01:00:00',
        LatestDate => '1970-01-01T01:00:00',
      },
      ExecutionFilter => {
        WorkflowId => 'MyWorkflowId',    # min: 1, max: 256

      },    # OPTIONAL
      TagFilter => {
        Tag => 'MyTag',    # max: 256

      },    # OPTIONAL
      TypeFilter => {
        Name    => 'MyName',               # min: 1, max: 256
        Version => 'MyVersionOptional',    # max: 64; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Count     = $WorkflowExecutionCount->Count;
    my $Truncated = $WorkflowExecutionCount->Truncated;

    # Returns a L<Paws::SimpleWorkflow::WorkflowExecutionCount> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/CountOpenWorkflowExecutions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain containing the workflow executions to count.



=head2 ExecutionFilter => L<Paws::SimpleWorkflow::WorkflowExecutionFilter>

If specified, only workflow executions matching the C<WorkflowId> in
the filter are counted.

C<executionFilter>, C<typeFilter> and C<tagFilter> are mutually
exclusive. You can specify at most one of these in a request.



=head2 B<REQUIRED> StartTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>

Specifies the start time criteria that workflow executions must meet in
order to be counted.



=head2 TagFilter => L<Paws::SimpleWorkflow::TagFilter>

If specified, only executions that have a tag that matches the filter
are counted.

C<executionFilter>, C<typeFilter> and C<tagFilter> are mutually
exclusive. You can specify at most one of these in a request.



=head2 TypeFilter => L<Paws::SimpleWorkflow::WorkflowTypeFilter>

Specifies the type of the workflow executions to be counted.

C<executionFilter>, C<typeFilter> and C<tagFilter> are mutually
exclusive. You can specify at most one of these in a request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CountOpenWorkflowExecutions in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

