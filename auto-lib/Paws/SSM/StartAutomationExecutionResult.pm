# Generated from json/callresult_class.tt

package Paws::SSM::StartAutomationExecutionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has AutomationExecutionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AutomationExecutionId' => {
                                            'type' => 'Str'
                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::StartAutomationExecutionResult

=head1 ATTRIBUTES


=head2 AutomationExecutionId => Str

The unique ID of a newly scheduled automation execution.


=head2 _request_id => Str


=cut

1;