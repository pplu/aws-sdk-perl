# Generated from json/callresult_class.tt

package Paws::StepFunctions::StopExecutionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has StopDate => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'StopDate' => 'stopDate'
                     },
  'IsRequired' => {
                    'StopDate' => 1
                  },
  'types' => {
               'StopDate' => {
                               'type' => 'Str'
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

Paws::StepFunctions::StopExecutionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> StopDate => Str

The date the execution is stopped.


=head2 _request_id => Str


=cut

1;