# Generated from json/callresult_class.tt

package Paws::StepFunctions::StartExecutionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has ExecutionArn => (is => 'ro', isa => Str, required => 1);
  has StartDate => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExecutionArn' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StartDate' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'ExecutionArn' => 'executionArn',
                       'StartDate' => 'startDate'
                     },
  'IsRequired' => {
                    'ExecutionArn' => 1,
                    'StartDate' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::StartExecutionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) that identifies the execution.


=head2 B<REQUIRED> StartDate => Str

The date the execution is started.


=head2 _request_id => Str


=cut

1;