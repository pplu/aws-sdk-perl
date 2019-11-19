# Generated from json/callresult_class.tt

package Paws::CodePipeline::ListActionExecutionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_ActionExecutionDetail/;
  has ActionExecutionDetails => (is => 'ro', isa => ArrayRef[CodePipeline_ActionExecutionDetail]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ActionExecutionDetails' => 'actionExecutionDetails',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ActionExecutionDetails' => {
                                             'type' => 'ArrayRef[CodePipeline_ActionExecutionDetail]',
                                             'class' => 'Paws::CodePipeline::ActionExecutionDetail'
                                           },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListActionExecutionsOutput

=head1 ATTRIBUTES


=head2 ActionExecutionDetails => ArrayRef[CodePipeline_ActionExecutionDetail]

The details for a list of recent executions, such as action execution
ID.


=head2 NextToken => Str

If the amount of returned information is significantly large, an
identifier is also returned and can be used in a subsequent
C<ListActionExecutions> call to return the next set of action
executions in the list.


=head2 _request_id => Str


=cut

1;