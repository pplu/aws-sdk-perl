# Generated from json/callresult_class.tt

package Paws::SSM::DescribeAutomationStepExecutionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_StepExecution/;
  has NextToken => (is => 'ro', isa => Str);
  has StepExecutions => (is => 'ro', isa => ArrayRef[SSM_StepExecution]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'StepExecutions' => {
                                     'class' => 'Paws::SSM::StepExecution',
                                     'type' => 'ArrayRef[SSM_StepExecution]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAutomationStepExecutionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 StepExecutions => ArrayRef[SSM_StepExecution]

A list of details about the current state of all steps that make up an
execution.


=head2 _request_id => Str


=cut

1;