# Generated from json/callargs_class.tt

package Paws::SimpleWorkflow::ListClosedWorkflowExecutions;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_CloseStatusFilter SimpleWorkflow_WorkflowTypeFilter SimpleWorkflow_WorkflowExecutionFilter SimpleWorkflow_ExecutionTimeFilter SimpleWorkflow_TagFilter/;
  has CloseStatusFilter => (is => 'ro', isa => SimpleWorkflow_CloseStatusFilter, predicate => 1);
  has CloseTimeFilter => (is => 'ro', isa => SimpleWorkflow_ExecutionTimeFilter, predicate => 1);
  has Domain => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ExecutionFilter => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionFilter, predicate => 1);
  has MaximumPageSize => (is => 'ro', isa => Int, predicate => 1);
  has NextPageToken => (is => 'ro', isa => Str, predicate => 1);
  has ReverseOrder => (is => 'ro', isa => Bool, predicate => 1);
  has StartTimeFilter => (is => 'ro', isa => SimpleWorkflow_ExecutionTimeFilter, predicate => 1);
  has TagFilter => (is => 'ro', isa => SimpleWorkflow_TagFilter, predicate => 1);
  has TypeFilter => (is => 'ro', isa => SimpleWorkflow_WorkflowTypeFilter, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListClosedWorkflowExecutions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SimpleWorkflow::WorkflowExecutionInfos');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'MaximumPageSize' => {
                                      'type' => 'Int'
                                    },
               'StartTimeFilter' => {
                                      'class' => 'Paws::SimpleWorkflow::ExecutionTimeFilter',
                                      'type' => 'SimpleWorkflow_ExecutionTimeFilter'
                                    },
               'Domain' => {
                             'type' => 'Str'
                           },
               'TypeFilter' => {
                                 'class' => 'Paws::SimpleWorkflow::WorkflowTypeFilter',
                                 'type' => 'SimpleWorkflow_WorkflowTypeFilter'
                               },
               'ExecutionFilter' => {
                                      'class' => 'Paws::SimpleWorkflow::WorkflowExecutionFilter',
                                      'type' => 'SimpleWorkflow_WorkflowExecutionFilter'
                                    },
               'TagFilter' => {
                                'class' => 'Paws::SimpleWorkflow::TagFilter',
                                'type' => 'SimpleWorkflow_TagFilter'
                              },
               'CloseStatusFilter' => {
                                        'class' => 'Paws::SimpleWorkflow::CloseStatusFilter',
                                        'type' => 'SimpleWorkflow_CloseStatusFilter'
                                      },
               'CloseTimeFilter' => {
                                      'class' => 'Paws::SimpleWorkflow::ExecutionTimeFilter',
                                      'type' => 'SimpleWorkflow_ExecutionTimeFilter'
                                    },
               'ReverseOrder' => {
                                   'type' => 'Bool'
                                 }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'MaximumPageSize' => 'maximumPageSize',
                       'StartTimeFilter' => 'startTimeFilter',
                       'Domain' => 'domain',
                       'TypeFilter' => 'typeFilter',
                       'ExecutionFilter' => 'executionFilter',
                       'TagFilter' => 'tagFilter',
                       'CloseStatusFilter' => 'closeStatusFilter',
                       'CloseTimeFilter' => 'closeTimeFilter',
                       'ReverseOrder' => 'reverseOrder'
                     },
  'IsRequired' => {
                    'Domain' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ListClosedWorkflowExecutions - Arguments for method ListClosedWorkflowExecutions on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClosedWorkflowExecutions on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method ListClosedWorkflowExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClosedWorkflowExecutions.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $WorkflowExecutionInfos = $swf->ListClosedWorkflowExecutions(
      Domain            => 'MyDomainName',
      CloseStatusFilter => {
        Status => 'COMPLETED'
        , # values: COMPLETED, FAILED, CANCELED, TERMINATED, CONTINUED_AS_NEW, TIMED_OUT

      },    # OPTIONAL
      CloseTimeFilter => {
        OldestDate => '1970-01-01T01:00:00',
        LatestDate => '1970-01-01T01:00:00',
      },    # OPTIONAL
      ExecutionFilter => {
        WorkflowId => 'MyWorkflowId',    # min: 1, max: 256

      },    # OPTIONAL
      MaximumPageSize => 1,                # OPTIONAL
      NextPageToken   => 'MyPageToken',    # OPTIONAL
      ReverseOrder    => 1,                # OPTIONAL
      StartTimeFilter => {
        OldestDate => '1970-01-01T01:00:00',
        LatestDate => '1970-01-01T01:00:00',
      },                                   # OPTIONAL
      TagFilter => {
        Tag => 'MyTag',                    # max: 256

      },    # OPTIONAL
      TypeFilter => {
        Name    => 'MyName',               # min: 1, max: 256
        Version => 'MyVersionOptional',    # max: 64; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ExecutionInfos = $WorkflowExecutionInfos->ExecutionInfos;
    my $NextPageToken  = $WorkflowExecutionInfos->NextPageToken;

    # Returns a L<Paws::SimpleWorkflow::WorkflowExecutionInfos> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/ListClosedWorkflowExecutions>

=head1 ATTRIBUTES


=head2 CloseStatusFilter => SimpleWorkflow_CloseStatusFilter

If specified, only workflow executions that match this I<close status>
are listed. For example, if TERMINATED is specified, then only
TERMINATED workflow executions are listed.

C<closeStatusFilter>, C<executionFilter>, C<typeFilter> and
C<tagFilter> are mutually exclusive. You can specify at most one of
these in a request.



=head2 CloseTimeFilter => SimpleWorkflow_ExecutionTimeFilter

If specified, the workflow executions are included in the returned
results based on whether their close times are within the range
specified by this filter. Also, if this parameter is specified, the
returned results are ordered by their close times.

C<startTimeFilter> and C<closeTimeFilter> are mutually exclusive. You
must specify one of these in a request but not both.



=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the workflow executions to list.



=head2 ExecutionFilter => SimpleWorkflow_WorkflowExecutionFilter

If specified, only workflow executions matching the workflow ID
specified in the filter are returned.

C<closeStatusFilter>, C<executionFilter>, C<typeFilter> and
C<tagFilter> are mutually exclusive. You can specify at most one of
these in a request.



=head2 MaximumPageSize => Int

The maximum number of results that are returned per call. Use
C<nextPageToken> to obtain further pages of results.



=head2 NextPageToken => Str

If C<NextPageToken> is returned there are more results available. The
value of C<NextPageToken> is a unique pagination token for each page.
Make the call again using the returned token to retrieve the next page.
Keep all other arguments unchanged. Each pagination token expires after
60 seconds. Using an expired pagination token will return a C<400>
error: "C<Specified token has exceeded its maximum lifetime>".

The configured C<maximumPageSize> determines how many results can be
returned in a single call.



=head2 ReverseOrder => Bool

When set to C<true>, returns the results in reverse order. By default
the results are returned in descending order of the start or the close
time of the executions.



=head2 StartTimeFilter => SimpleWorkflow_ExecutionTimeFilter

If specified, the workflow executions are included in the returned
results based on whether their start times are within the range
specified by this filter. Also, if this parameter is specified, the
returned results are ordered by their start times.

C<startTimeFilter> and C<closeTimeFilter> are mutually exclusive. You
must specify one of these in a request but not both.



=head2 TagFilter => SimpleWorkflow_TagFilter

If specified, only executions that have the matching tag are listed.

C<closeStatusFilter>, C<executionFilter>, C<typeFilter> and
C<tagFilter> are mutually exclusive. You can specify at most one of
these in a request.



=head2 TypeFilter => SimpleWorkflow_WorkflowTypeFilter

If specified, only executions of the type specified in the filter are
returned.

C<closeStatusFilter>, C<executionFilter>, C<typeFilter> and
C<tagFilter> are mutually exclusive. You can specify at most one of
these in a request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClosedWorkflowExecutions in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

