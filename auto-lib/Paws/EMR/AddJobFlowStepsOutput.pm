# Generated from json/callresult_class.tt

package Paws::EMR::AddJobFlowStepsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EMR::Types qw//;
  has StepIds => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StepIds' => {
                              'type' => 'ArrayRef[Str|Undef]'
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

Paws::EMR::AddJobFlowStepsOutput

=head1 ATTRIBUTES


=head2 StepIds => ArrayRef[Str|Undef]

The identifiers of the list of steps added to the job flow.


=head2 _request_id => Str


=cut

1;