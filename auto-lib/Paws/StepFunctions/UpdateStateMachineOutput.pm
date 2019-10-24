# Generated from json/callresult_class.tt

package Paws::StepFunctions::UpdateStateMachineOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has UpdateDate => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UpdateDate' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'UpdateDate' => 'updateDate'
                     },
  'IsRequired' => {
                    'UpdateDate' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::UpdateStateMachineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> UpdateDate => Str

The date and time the state machine was updated.


=head2 _request_id => Str


=cut

1;