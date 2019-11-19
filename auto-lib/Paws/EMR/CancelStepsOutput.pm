# Generated from json/callresult_class.tt

package Paws::EMR::CancelStepsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EMR::Types qw/EMR_CancelStepsInfo/;
  has CancelStepsInfoList => (is => 'ro', isa => ArrayRef[EMR_CancelStepsInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CancelStepsInfoList' => {
                                          'class' => 'Paws::EMR::CancelStepsInfo',
                                          'type' => 'ArrayRef[EMR_CancelStepsInfo]'
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

Paws::EMR::CancelStepsOutput

=head1 ATTRIBUTES


=head2 CancelStepsInfoList => ArrayRef[EMR_CancelStepsInfo]

A list of CancelStepsInfo, which shows the status of specified cancel
requests for each C<StepID> specified.


=head2 _request_id => Str


=cut

1;