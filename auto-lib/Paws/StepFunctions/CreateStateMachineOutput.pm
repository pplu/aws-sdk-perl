# Generated from json/callresult_class.tt

package Paws::StepFunctions::CreateStateMachineOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has CreationDate => (is => 'ro', isa => Str, required => 1);
  has StateMachineArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StateMachineArn' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'CreationDate' => 'creationDate',
                       'StateMachineArn' => 'stateMachineArn'
                     },
  'IsRequired' => {
                    'CreationDate' => 1,
                    'StateMachineArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::CreateStateMachineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

The date the state machine is created.


=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) that identifies the created state
machine.


=head2 _request_id => Str


=cut

1;