# Generated from json/callresult_class.tt

package Paws::SSM::GetParametersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SSM::Types qw/SSM_Parameter/;
  has InvalidParameters => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Parameters => (is => 'ro', isa => ArrayRef[SSM_Parameter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::SSM::Parameter',
                                 'type' => 'ArrayRef[SSM_Parameter]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InvalidParameters' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetParametersResult

=head1 ATTRIBUTES


=head2 InvalidParameters => ArrayRef[Str|Undef]

A list of parameters that are not formatted correctly or do not run
during an execution.


=head2 Parameters => ArrayRef[SSM_Parameter]

A list of details for a parameter.


=head2 _request_id => Str


=cut

1;