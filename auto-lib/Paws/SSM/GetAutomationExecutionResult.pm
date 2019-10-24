# Generated from json/callresult_class.tt

package Paws::SSM::GetAutomationExecutionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_AutomationExecution/;
  has AutomationExecution => (is => 'ro', isa => SSM_AutomationExecution);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AutomationExecution' => {
                                          'class' => 'Paws::SSM::AutomationExecution',
                                          'type' => 'SSM_AutomationExecution'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetAutomationExecutionResult

=head1 ATTRIBUTES


=head2 AutomationExecution => SSM_AutomationExecution

Detailed information about the current state of an automation
execution.


=head2 _request_id => Str


=cut

1;