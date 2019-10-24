# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::WorkflowExecutionInfos;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowExecutionInfo/;
  has ExecutionInfos => (is => 'ro', isa => ArrayRef[SimpleWorkflow_WorkflowExecutionInfo], required => 1);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'ExecutionInfos' => {
                                     'class' => 'Paws::SimpleWorkflow::WorkflowExecutionInfo',
                                     'type' => 'ArrayRef[SimpleWorkflow_WorkflowExecutionInfo]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'ExecutionInfos' => 'executionInfos'
                     },
  'IsRequired' => {
                    'ExecutionInfos' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionInfos

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionInfos => ArrayRef[SimpleWorkflow_WorkflowExecutionInfo]

The list of workflow information structures.


=head2 NextPageToken => Str

If a C<NextPageToken> was returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<nextPageToken>. Keep all other
arguments unchanged.

The configured C<maximumPageSize> determines how many results can be
returned in a single call.


=head2 _request_id => Str


=cut

1;