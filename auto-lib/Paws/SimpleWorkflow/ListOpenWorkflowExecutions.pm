# Generated from json/callargs_class.tt

package Paws::SimpleWorkflow::ListOpenWorkflowExecutions;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowExecutionFilter SimpleWorkflow_WorkflowTypeFilter SimpleWorkflow_TagFilter SimpleWorkflow_ExecutionTimeFilter/;
  has Domain => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ExecutionFilter => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionFilter, predicate => 1);
  has MaximumPageSize => (is => 'ro', isa => Int, predicate => 1);
  has NextPageToken => (is => 'ro', isa => Str, predicate => 1);
  has ReverseOrder => (is => 'ro', isa => Bool, predicate => 1);
  has StartTimeFilter => (is => 'ro', isa => SimpleWorkflow_ExecutionTimeFilter, required => 1, predicate => 1);
  has TagFilter => (is => 'ro', isa => SimpleWorkflow_TagFilter, predicate => 1);
  has TypeFilter => (is => 'ro', isa => SimpleWorkflow_WorkflowTypeFilter, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListOpenWorkflowExecutions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SimpleWorkflow::WorkflowExecutionInfos');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Domain' => 'domain',
                       'NextPageToken' => 'nextPageToken',
                       'StartTimeFilter' => 'startTimeFilter',
                       'TagFilter' => 'tagFilter',
                       'MaximumPageSize' => 'maximumPageSize',
                       'TypeFilter' => 'typeFilter',
                       'ReverseOrder' => 'reverseOrder',
                       'ExecutionFilter' => 'executionFilter'
                     },
  'IsRequired' => {
                    'StartTimeFilter' => 1,
                    'Domain' => 1
                  },
  'types' => {
               'StartTimeFilter' => {
                                      'class' => 'Paws::SimpleWorkflow::ExecutionTimeFilter',
                                      'type' => 'SimpleWorkflow_ExecutionTimeFilter'
                                    },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'Domain' => {
                             'type' => 'Str'
                           },
               'TagFilter' => {
                                'type' => 'SimpleWorkflow_TagFilter',
                                'class' => 'Paws::SimpleWorkflow::TagFilter'
                              },
               'MaximumPageSize' => {
                                      'type' => 'Int'
                                    },
               'TypeFilter' => {
                                 'type' => 'SimpleWorkflow_WorkflowTypeFilter',
                                 'class' => 'Paws::SimpleWorkflow::WorkflowTypeFilter'
                               },
               'ExecutionFilter' => {
                                      'type' => 'SimpleWorkflow_WorkflowExecutionFilter',
                                      'class' => 'Paws::SimpleWorkflow::WorkflowExecutionFilter'
                                    },
               'ReverseOrder' => {
                                   'type' => 'Bool'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ListOpenWorkflowExecutions - Arguments for method ListOpenWorkflowExecutions on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOpenWorkflowExecutions on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method ListOpenWorkflowExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOpenWorkflowExecutions.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $WorkflowExecutionInfos = $swf->ListOpenWorkflowExecutions(
      Domain          => 'MyDomainName',
      StartTimeFilter => {
        OldestDate => '1970-01-01T01:00:00',
        LatestDate => '1970-01-01T01:00:00',
      },
      ExecutionFilter => {
        WorkflowId => 'MyWorkflowId',    # min: 1, max: 256

      },    # OPTIONAL
      MaximumPageSize => 1,                # OPTIONAL
      NextPageToken   => 'MyPageToken',    # OPTIONAL
      ReverseOrder    => 1,                # OPTIONAL
      TagFilter       => {
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/ListOpenWorkflowExecutions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the workflow executions to list.



=head2 ExecutionFilter => SimpleWorkflow_WorkflowExecutionFilter

If specified, only workflow executions matching the workflow ID
specified in the filter are returned.

C<executionFilter>, C<typeFilter> and C<tagFilter> are mutually
exclusive. You can specify at most one of these in a request.



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
the results are returned in descending order of the start time of the
executions.



=head2 B<REQUIRED> StartTimeFilter => SimpleWorkflow_ExecutionTimeFilter

Workflow executions are included in the returned results based on
whether their start times are within the range specified by this
filter.



=head2 TagFilter => SimpleWorkflow_TagFilter

If specified, only executions that have the matching tag are listed.

C<executionFilter>, C<typeFilter> and C<tagFilter> are mutually
exclusive. You can specify at most one of these in a request.



=head2 TypeFilter => SimpleWorkflow_WorkflowTypeFilter

If specified, only executions of the type specified in the filter are
returned.

C<executionFilter>, C<typeFilter> and C<tagFilter> are mutually
exclusive. You can specify at most one of these in a request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOpenWorkflowExecutions in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

