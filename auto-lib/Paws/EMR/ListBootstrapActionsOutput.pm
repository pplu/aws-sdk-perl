# Generated from json/callresult_class.tt

package Paws::EMR::ListBootstrapActionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EMR::Types qw/EMR_Command/;
  has BootstrapActions => (is => 'ro', isa => ArrayRef[EMR_Command]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BootstrapActions' => {
                                       'class' => 'Paws::EMR::Command',
                                       'type' => 'ArrayRef[EMR_Command]'
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

Paws::EMR::ListBootstrapActionsOutput

=head1 ATTRIBUTES


=head2 BootstrapActions => ArrayRef[EMR_Command]

The bootstrap actions associated with the cluster.


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;