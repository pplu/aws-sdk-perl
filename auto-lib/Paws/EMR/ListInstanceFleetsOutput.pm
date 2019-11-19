# Generated from json/callresult_class.tt

package Paws::EMR::ListInstanceFleetsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EMR::Types qw/EMR_InstanceFleet/;
  has InstanceFleets => (is => 'ro', isa => ArrayRef[EMR_InstanceFleet]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'InstanceFleets' => {
                                     'type' => 'ArrayRef[EMR_InstanceFleet]',
                                     'class' => 'Paws::EMR::InstanceFleet'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListInstanceFleetsOutput

=head1 ATTRIBUTES


=head2 InstanceFleets => ArrayRef[EMR_InstanceFleet]

The list of instance fleets for the cluster and given filters.


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;