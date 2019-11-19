# Generated from json/callresult_class.tt

package Paws::EMR::ListStepsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EMR::Types qw/EMR_StepSummary/;
  has Marker => (is => 'ro', isa => Str);
  has Steps => (is => 'ro', isa => ArrayRef[EMR_StepSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Steps' => {
                            'class' => 'Paws::EMR::StepSummary',
                            'type' => 'ArrayRef[EMR_StepSummary]'
                          },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListStepsOutput

=head1 ATTRIBUTES


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 Steps => ArrayRef[EMR_StepSummary]

The filtered list of steps for the cluster.


=head2 _request_id => Str


=cut

1;