# Generated from json/callargs_class.tt

package Paws::SimpleWorkflow::CountOpenWorkflowExecutions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowTypeFilter SimpleWorkflow_ExecutionTimeFilter SimpleWorkflow_TagFilter SimpleWorkflow_WorkflowExecutionFilter/;
  has Domain => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ExecutionFilter => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionFilter, predicate => 1);
  has StartTimeFilter => (is => 'ro', isa => SimpleWorkflow_ExecutionTimeFilter, required => 1, predicate => 1);
  has TagFilter => (is => 'ro', isa => SimpleWorkflow_TagFilter, predicate => 1);
  has TypeFilter => (is => 'ro', isa => SimpleWorkflow_WorkflowTypeFilter, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CountOpenWorkflowExecutions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SimpleWorkflow::WorkflowExecutionCount');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TypeFilter' => 'typeFilter',
                       'StartTimeFilter' => 'startTimeFilter',
                       'Domain' => 'domain',
                       'ExecutionFilter' => 'executionFilter',
                       'TagFilter' => 'tagFilter'
                     },
  'IsRequired' => {
                    'StartTimeFilter' => 1,
                    'Domain' => 1
                  },
  'types' => {
               'TagFilter' => {
                                'class' => 'Paws::SimpleWorkflow::TagFilter',
                                'type' => 'SimpleWorkflow_TagFilter'
                              },
               'ExecutionFilter' => {
                                      'type' => 'SimpleWorkflow_WorkflowExecutionFilter',
                                      'class' => 'Paws::SimpleWorkflow::WorkflowExecutionFilter'
                                    },
               'Domain' => {
                             'type' => 'Str'
                           },
               'StartTimeFilter' => {
                                      'class' => 'Paws::SimpleWorkflow::ExecutionTimeFilter',
                                      'type' => 'SimpleWorkflow_ExecutionTimeFilter'
                                    },
               'TypeFilter' => {
                                 'type' => 'SimpleWorkflow_WorkflowTypeFilter',
                                 'class' => 'Paws::SimpleWorkflow::WorkflowTypeFilter'
                               }
             }
}
;
    return $Params_map;
  }

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



=head2 ExecutionFilter => SimpleWorkflow_WorkflowExecutionFilter

If specified, only workflow executions matching the C<WorkflowId> in
the filter are counted.

C<executionFilter>, C<typeFilter> and C<tagFilter> are mutually
exclusive. You can specify at most one of these in a request.



=head2 B<REQUIRED> StartTimeFilter => SimpleWorkflow_ExecutionTimeFilter

Specifies the start time criteria that workflow executions must meet in
order to be counted.



=head2 TagFilter => SimpleWorkflow_TagFilter

If specified, only executions that have a tag that matches the filter
are counted.

C<executionFilter>, C<typeFilter> and C<tagFilter> are mutually
exclusive. You can specify at most one of these in a request.



=head2 TypeFilter => SimpleWorkflow_WorkflowTypeFilter

Specifies the type of the workflow executions to be counted.

C<executionFilter>, C<typeFilter> and C<tagFilter> are mutually
exclusive. You can specify at most one of these in a request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CountOpenWorkflowExecutions in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

