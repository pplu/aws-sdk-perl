# Generated from json/callargs_class.tt

package Paws::SimpleWorkflow::PollForDecisionTask;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_TaskList/;
  has Domain => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Identity => (is => 'ro', isa => Str, predicate => 1);
  has MaximumPageSize => (is => 'ro', isa => Int, predicate => 1);
  has NextPageToken => (is => 'ro', isa => Str, predicate => 1);
  has ReverseOrder => (is => 'ro', isa => Bool, predicate => 1);
  has TaskList => (is => 'ro', isa => SimpleWorkflow_TaskList, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PollForDecisionTask');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SimpleWorkflow::DecisionTask');
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
               'TaskList' => {
                               'type' => 'SimpleWorkflow_TaskList',
                               'class' => 'Paws::SimpleWorkflow::TaskList'
                             },
               'Domain' => {
                             'type' => 'Str'
                           },
               'Identity' => {
                               'type' => 'Str'
                             },
               'ReverseOrder' => {
                                   'type' => 'Bool'
                                 }
             },
  'IsRequired' => {
                    'Domain' => 1,
                    'TaskList' => 1
                  },
  'NameInRequest' => {
                       'ReverseOrder' => 'reverseOrder',
                       'Identity' => 'identity',
                       'NextPageToken' => 'nextPageToken',
                       'MaximumPageSize' => 'maximumPageSize',
                       'TaskList' => 'taskList',
                       'Domain' => 'domain'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::PollForDecisionTask - Arguments for method PollForDecisionTask on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PollForDecisionTask on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method PollForDecisionTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PollForDecisionTask.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $DecisionTask = $swf->PollForDecisionTask(
      Domain   => 'MyDomainName',
      TaskList => {
        Name => 'MyName',    # min: 1, max: 256

      },
      Identity        => 'MyIdentity',     # OPTIONAL
      MaximumPageSize => 1,                # OPTIONAL
      NextPageToken   => 'MyPageToken',    # OPTIONAL
      ReverseOrder    => 1,                # OPTIONAL
    );

    # Results:
    my $Events                 = $DecisionTask->Events;
    my $NextPageToken          = $DecisionTask->NextPageToken;
    my $PreviousStartedEventId = $DecisionTask->PreviousStartedEventId;
    my $StartedEventId         = $DecisionTask->StartedEventId;
    my $TaskToken              = $DecisionTask->TaskToken;
    my $WorkflowExecution      = $DecisionTask->WorkflowExecution;
    my $WorkflowType           = $DecisionTask->WorkflowType;

    # Returns a L<Paws::SimpleWorkflow::DecisionTask> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/PollForDecisionTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain containing the task lists to poll.



=head2 Identity => Str

Identity of the decider making the request, which is recorded in the
DecisionTaskStarted event in the workflow history. This enables
diagnostic tracing when problems arise. The form of this identity is
user defined.



=head2 MaximumPageSize => Int

The maximum number of results that are returned per call. Use
C<nextPageToken> to obtain further pages of results.

This is an upper limit only; the actual number of results returned per
call may be fewer than the specified maximum.



=head2 NextPageToken => Str

If C<NextPageToken> is returned there are more results available. The
value of C<NextPageToken> is a unique pagination token for each page.
Make the call again using the returned token to retrieve the next page.
Keep all other arguments unchanged. Each pagination token expires after
60 seconds. Using an expired pagination token will return a C<400>
error: "C<Specified token has exceeded its maximum lifetime>".

The configured C<maximumPageSize> determines how many results can be
returned in a single call.

The C<nextPageToken> returned by this action cannot be used with
GetWorkflowExecutionHistory to get the next page. You must call
PollForDecisionTask again (with the C<nextPageToken>) to retrieve the
next page of history records. Calling PollForDecisionTask with a
C<nextPageToken> doesn't return a new decision task.



=head2 ReverseOrder => Bool

When set to C<true>, returns the events in reverse order. By default
the results are returned in ascending order of the C<eventTimestamp> of
the events.



=head2 B<REQUIRED> TaskList => SimpleWorkflow_TaskList

Specifies the task list to poll for decision tasks.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not I<be> the literal string C<arn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PollForDecisionTask in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

