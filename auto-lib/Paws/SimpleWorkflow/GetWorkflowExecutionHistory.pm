# Generated from json/callargs_class.tt

package Paws::SimpleWorkflow::GetWorkflowExecutionHistory;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowExecution/;
  has Domain => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Execution => (is => 'ro', isa => SimpleWorkflow_WorkflowExecution, required => 1, predicate => 1);
  has MaximumPageSize => (is => 'ro', isa => Int, predicate => 1);
  has NextPageToken => (is => 'ro', isa => Str, predicate => 1);
  has ReverseOrder => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetWorkflowExecutionHistory');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SimpleWorkflow::History');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ReverseOrder' => 'reverseOrder',
                       'Domain' => 'domain',
                       'NextPageToken' => 'nextPageToken',
                       'MaximumPageSize' => 'maximumPageSize',
                       'Execution' => 'execution'
                     },
  'IsRequired' => {
                    'Execution' => 1,
                    'Domain' => 1
                  },
  'types' => {
               'Domain' => {
                             'type' => 'Str'
                           },
               'MaximumPageSize' => {
                                      'type' => 'Int'
                                    },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'Execution' => {
                                'class' => 'Paws::SimpleWorkflow::WorkflowExecution',
                                'type' => 'SimpleWorkflow_WorkflowExecution'
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

Paws::SimpleWorkflow::GetWorkflowExecutionHistory - Arguments for method GetWorkflowExecutionHistory on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflowExecutionHistory on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method GetWorkflowExecutionHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflowExecutionHistory.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $History = $swf->GetWorkflowExecutionHistory(
      Domain    => 'MyDomainName',
      Execution => {
        RunId      => 'MyWorkflowRunId',    # min: 1, max: 64
        WorkflowId => 'MyWorkflowId',       # min: 1, max: 256

      },
      MaximumPageSize => 1,                 # OPTIONAL
      NextPageToken   => 'MyPageToken',     # OPTIONAL
      ReverseOrder    => 1,                 # OPTIONAL
    );

    # Results:
    my $Events        = $History->Events;
    my $NextPageToken = $History->NextPageToken;

    # Returns a L<Paws::SimpleWorkflow::History> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/GetWorkflowExecutionHistory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain containing the workflow execution.



=head2 B<REQUIRED> Execution => SimpleWorkflow_WorkflowExecution

Specifies the workflow execution for which to return the history.



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

When set to C<true>, returns the events in reverse order. By default
the results are returned in ascending order of the C<eventTimeStamp> of
the events.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflowExecutionHistory in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

