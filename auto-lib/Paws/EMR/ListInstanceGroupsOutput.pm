# Generated from json/callresult_class.tt

package Paws::EMR::ListInstanceGroupsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EMR::Types qw/EMR_InstanceGroup/;
  has InstanceGroups => (is => 'ro', isa => ArrayRef[EMR_InstanceGroup]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InstanceGroups' => {
                                     'class' => 'Paws::EMR::InstanceGroup',
                                     'type' => 'ArrayRef[EMR_InstanceGroup]'
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

Paws::EMR::ListInstanceGroupsOutput

=head1 ATTRIBUTES


=head2 InstanceGroups => ArrayRef[EMR_InstanceGroup]

The list of instance groups for the cluster and given filters.


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;